class SessionsController < ApplicationController
  def new
    @user = User.new #Any controller can create something from any other model!
    if params[:user_created] == 'true'
      @user_created_message = 'User successfully created!'
    end
  end

  def create
    # raise params.inspect
    #Find the user by email
    u = User.where(email: params[:user][:email]).first #in the params hash, you can pick up the user hash, within which you can pick up the email key-value pair
    if u !=nil && u.authenticate(params[:user][:password]) #check that there is a user found and the password is correct
      session['user_id'] = u.id.to_s # hold on to idea that you are logged in, which is the session state. This is a special rails magic thing. This capitalized session has nothing to do with a model or even this controller which is called sessions. The Session in this case refers to something in Rails that essentially is a cookie that will be passed around as long as the next page renders correctly
      redirect_to images_path #should redirect to a dashboard. Just want to redirect to a page that we currently have
    end
  end

  def destroy
    session.destroy
    redirect_to images_path
  end
end
