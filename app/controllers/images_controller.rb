class ImagesController < ApplicationController

  def index
    @images = Image.order(votes: :desc)
    @comment=Comment.new
    @commentsSubmitted = Comment.where(image_id: params[:id])
    @topUsers= User.order("vote_count DESC").limit(5)
  end
  
  def show
    @image = Image.find(params[:id])
    @comment=Comment.new
    @commentsSubmitted = Comment.where(image_id: params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    # raise params.inspect
    @image.avatar=URI.parse(params[:image][:photo])
    if @image.save
      flash[:image_success] = "Upload Successful"
      redirect_to images_path
    else
      flash[:image_error] = "All fields must be complete"
      redirect_to images_path
    end
  end
  
  def create_upvote
    @image = Image.find(params[:id])
    user=@image.user
    if @image['votes'].include?(current_user.id)
      @image['votes'].delete(current_user.id)
      @image.save
      user.vote_count-=1
      user.save
      redirect_to image_path(@image.id)
    else
      @image['votes'] << current_user.id
      @image.save
      user.vote_count+=1
      user.save
      redirect_to image_path(@image.id)
    end
  end
  
  private

  def image_params
    params.require(:image).permit(:title, :description, :link, :date, :photo, :user_id)
  end
end
