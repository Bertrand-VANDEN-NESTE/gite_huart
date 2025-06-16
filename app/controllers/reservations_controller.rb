
class ReservationsController < ApplicationController
  before_action :set_room

  def new
    # @room est déjà défini grâce à set_room
  end

  def index
    @reservations = @room.reservations
    render json: @reservations
  end

  def create
    @reservation = @room.reservations.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def reservation_params
    params.require(:reservation).permit(:title, :start, :end)
  end
end
