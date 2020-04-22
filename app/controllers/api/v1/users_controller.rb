class Api::V1::UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.all)
  end

  def show
    user = User.find_by(username: params[:user][:username])
    if !user.nil? && user.authenticate(params[:user][:password])
      render json: UserSerializer.new(user)
    else
      render json: {error_message: "Username and/or Password is incorrect."}
    end
  end

  def create
    user = User.create(user_params)
    if user.save
      render json: UserSerializer.new(user)
    elsif User.find_by(username: params[:user][:username])
      render json: {error_message: "Username is already in use."}
    else
      render json: {error_message: "Passwords do not match."}
    end
  end

  def destroy
    render json: UserSerializer.new(User.destroy(params[:id]))
  end

  private

  def user_params
    params[:user].permit(:username, :password, :password_confirmation)
  end
end
