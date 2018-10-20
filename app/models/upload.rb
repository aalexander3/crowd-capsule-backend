class Upload < ApplicationRecord
  belongs_to :user

  def self.save_to_cloud(file)
    secret = {
      api_key: ENV['API_KEY'],
      api_secret: ENV['API_SECRET'],
      cloud_name: ENV['CLOUD_NAME']
    }

    Cloudinary::Uploader.upload(file, secret)
  end

end
