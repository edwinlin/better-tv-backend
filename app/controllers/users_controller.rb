class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  private

  def user_params
    params.permit(:name, :image_url)
  end
end