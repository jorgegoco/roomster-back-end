class Api::V1::UsersController < ApplicationController
  
   # GET /api/v1/users/me
  def me
    render json: @current_user.as_json(only: %i[name role])
  end
end
