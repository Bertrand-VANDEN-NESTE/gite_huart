class ReservationsController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @reservation = Reservation.new

    # Toutes les dates entre start_date et end_date de chaque réservation existante
    @unavailable_dates = @room.reservations.flat_map do |res|
      (res.start_date..res.end_date).to_a
    end.uniq
  end

  def create
    @room = Room.find(params[:room_id])
    @reservation = @room.reservations.build(reservation_params)

    if params[:date_range].present?
      start_date, end_date = params[:date_range].split(" to ").map { |d| Date.parse(d) rescue nil }

      @reservation.start_date = start_date
      @reservation.end_date = end_date
    end

    if @reservation.save
      redirect_to @room, notice: "Réservation enregistrée avec succès."
    else
      flash.now[:alert] = "Erreur lors de la réservation."
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def reservation_params
    params.require(:reservation).permit(:full_name, :email, :phone_number)
  end


end
