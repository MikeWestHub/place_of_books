class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    Reservation.find(params[:id]).destroy
    redirect_to action: "index"
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to action: "show", id: @reservation.id
  end

  def create
    @reservation = Reservation.create(reservation_params)
    redirect_to action: "show", id: @reservation.id
  end

  private

  def reservation_params
    params.require(:reservation).permit(:book_id, :user_id)
  end
end
