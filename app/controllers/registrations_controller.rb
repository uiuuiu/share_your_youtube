class RegistrationsController < BaseController

  def create
    @user = User.create(user_params)

    if @user.errors.present?
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
