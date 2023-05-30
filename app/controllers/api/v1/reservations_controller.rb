class Api::V1::ReservationsController < ApplicationController

  # GET /api/v1/reservations
  def index
    @reservations = Reservation.includes(:room).where(user_id: @current_user.id).as_json(include: { room: {
                                                                                   only: %i[
                                                                                     name city
                                                                                   ]
                                                                                 } })

    render json: @reservations
  end
  
  # POST /api/v1/reservations
  def create
    @reservation = Reservation.new(reservation_params.merge(user_id: @current_user.id))
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /api/v1/reervations/:id
  def destroy
    @reservation = Reservation.find(params[:id])

    if @reservation.destroy
      render json: { message: 'Reservation deleted successfully' }, status: :ok
    else
      render json: { message: 'Reservation could not be deleted' }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.permit(:start_date, :end_date, :room_id)
  end
end
