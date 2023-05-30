class UsersController < ApplicationController
  
  before_action :authenticate_admin_request!
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only: [:destroy]

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

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :email, :password)
  end

  def authenticate_admin_request!
    unless current_user && (current_user.role == 'admin' || action_name == 'create')
      render json: { error: 'Not Authorized' }, status: :unauthorized
    end
  end
end
