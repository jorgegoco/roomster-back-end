class Api::V1::UsersController < ApplicationController
  def me
    render json: @current_user.as_json(only: %i[name role])
  end
end
