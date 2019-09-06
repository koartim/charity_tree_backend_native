class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: {status: "SUCCESS", message: "Loaded all users", data: @users}
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.permit(:username, :password, :bio, :avatar)
  end
end
