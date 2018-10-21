class Upload < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :caption, length: { maximum: 140 }

  @@secret = {
    api_key: ENV['API_KEY'],
    api_secret: ENV['API_SECRET'],
    cloud_name: 'crowd-capsule'
  }

  def self.save_it(file)
    if file.size <= 1000000 && !file.content_type.include?("video")
      self.save_to_cloud(file)
    else
      self.big_save(file)
    end
  end

  def self.save_to_cloud(file)
    Cloudinary::Uploader.upload(file, self.secret)
  end

  def self.big_save(file)
    Cloudinary::Uploader.large_upload(file, self.secret, resource_type: :video)
  end

  private

  def self.secret
    @@secret
  end

end
