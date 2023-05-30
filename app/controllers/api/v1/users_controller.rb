class Api::V1::UsersController < ApplicationController
  def me
    render json: @current_user.as_json(only: [:name, :role])
  end
end