class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:create], raise: false

  def create
    @user = User.create(user_params)
    render json: @user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
