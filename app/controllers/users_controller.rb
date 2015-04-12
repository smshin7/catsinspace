class UsersController < ApplicationController
	def new
    @user = User.new
	end

  def create
    user = User.new(params.require(:user).permit(:email, :username, :password)) 
    if user.save
      session['user_id'] = user.id.to_s
      flash[:success] = "Welcome to our app" 
      redirect_to root_path
    else
      render '/images'
    end
  end

  def show
    @user = User.where(id: session['user_id']).first
  end
end
