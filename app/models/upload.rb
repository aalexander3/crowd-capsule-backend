class Upload < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :location
  
  validates :caption, length: { maximum: 140 }

  @@secret = {
    api_key: ENV['API_KEY'],
    api_secret: ENV['API_SECRET'],
    cloud_name: 'crowd-capsule'
  }

  @@big_secret = {
    api_key: ENV['API_KEY'],
    api_secret: ENV['API_SECRET'],
    cloud_name: 'crowd-capsule',
    resource_type: :video,
    chunk_size: 6_000_000
  }

  def self.save_it(file)
    if file.size <= 1000000 && !file.content_type.include?("video")
      self.save_to_cloud(file)
    else
      self.big_save(file.tempfile.path)
    end
  end

  def self.save_to_cloud(file)
    Cloudinary::Uploader.upload(file, self.secret)
  end

  def self.big_save(file)
    Cloudinary::Uploader.upload(file, self.big_secret)
  end

  private

  def self.secret
    @@secret
  end

  def self.big_secret
    @@big_secret
  end

end
