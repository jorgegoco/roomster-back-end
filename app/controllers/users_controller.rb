class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :authenticate_admin!, except: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

  def authenticate_admin!
    return if @current_user && @current_user.role == 'admin'

    render json: { error: 'Not Authorized' }, status: :unauthorized
  end
end
