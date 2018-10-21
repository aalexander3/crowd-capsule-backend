class UploadsController < ApplicationController
  before_action :get_file, only: [:create]

  def create
    response = Upload.save_it(@file)
    user = User.find_by(username: "Admin")
    upload = Upload.new(path: response['url'], user: user, caption: @caption, category: Category.first)
    if upload.save
      render json: upload
    else
      render json: {message: "Sorry, the file you uploaded could not be saved!"}
    end
  end

  private

  def get_file
    @file = params[:file]
    @caption = params[:caption]
  end

end
