class SessionsController < BaseController

  def create
    @user = User.find_by(username: params[:username])
    @user && @user.authenticate(params[:password])
    session[:user_id] = @user && @user.id
    redirect_back(fallback_location: root_path)
  end

  def destroy
    session[:user_id] = nil
    redirect_back(fallback_location: root_path)
  end
end
