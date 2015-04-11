class ImagesController < ApplicationController

  def index
    @images = Image.all
  end
  
  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to images_path
    else
      render '/new'
    end
  end
  
  def create_upvote
    @image = Image.find(params[:id])
    @image.vote.push(current_user.id)
  end
  
  private

  def image_params
    params.require(:image).permit(:title, :description, :link, :date, :photo)
  end
end
