class PhotosController < ApplicationController
  
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
  end

  #/photos/:id/edit
  def edit
    @id = params[:id]
  end

  # PUT/PATCH/ | /photos/:id
  def update
    photo = Photo.find(params[:id])
    photo.title = params[:photo][:title]
    photo.image_url = params[:photo][:image_url]

    photo.save
    redirect_to photo
  end

  def create
    photo = Photo.new
    photo.title = params[:photo][:title]
    photo.image_url = params[:photo][:image_url]
    
    photo.save
    redirect_to photo #redirect_to "/photos/#{photo.id}"
  end

  # DELETE /photos/:id
  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    redirect_to photo
  end
end
