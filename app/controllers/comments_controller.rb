class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end
	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to image_path(@comment.image)
		end
	end
	def edit
		@comment = Comment.find(params[:id])
	end
	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(comment_params)
			redirect_to image_path(@comment.image_id)
		end
	end

	private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :image_id)
  end
end
