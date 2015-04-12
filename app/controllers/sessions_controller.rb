class SessionsController < ApplicationController
  def new
    @user = User.new
    if params[:user_created] == 'true'
      @user_created_message = 'User successfully created!'
    end
  end

  def create
    u = User.where(email: params[:user][:email]).first 
    if u !=nil && u.authenticate(params[:user][:password])
      session['user_id'] = u.id.to_s 
      flash[:success] = "Successfully Signed In"
      redirect_to images_path
    end
  end

  def destroy
    session.destroy
    redirect_to images_path
  end
end
