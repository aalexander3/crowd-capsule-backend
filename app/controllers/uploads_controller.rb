class UploadsController < ApplicationController
  before_action :get_file, only: [:create]
  before_action :get_upload, only: [:update]

  def index
    uploads = Upload.all
    # what's up models
    render json: uploads
  end

  def create
    response = Upload.save_it(@file)
    user = User.find_by(username: "Admin")
    upload = Upload.new(path: response['url'], user: user, caption: @caption, category: Category.all.sample, location: Location.random)
    if upload.save
      render json: upload
    else
      render json: {message: "Sorry, the file you uploaded could not be saved!"}
    end
  end

  def update
    @upload.update(upvotes: (@upload.upvotes + 1))
  end

  private

  def get_file
    @file = params[:file]
    @caption = params[:caption]
  end

  def get_upload
    @upload = Upload.find(params[:id])
  end

end
