class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
end

def show
    @place = Place.find(params[:id])
    @comment = Comment.new
    @photo = Photo.new
  end

private

def photo_params
  params.require(:photo).permit(:caption, :picture)
end
end