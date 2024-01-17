class Api::V1::UsersController < ApplicationController
  def index
  end

  def create
    user = User.create!(user_params)
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :email)
  end
end
