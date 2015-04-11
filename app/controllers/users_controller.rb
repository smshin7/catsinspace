class UsersController < ApplicationController
	def new
    @user = User.new
	end

  def create
    user = User.new(params.require(:user).permit(:email, :username, :password)) 
    if user.save
      redirect_to new_session_path
    end
  end

  def show
    @user = User.where(id: session['user_id']).first
  end
end
