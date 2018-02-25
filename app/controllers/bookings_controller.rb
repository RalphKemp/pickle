class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @request = Request.find(params[:id])
    if current_user.worker
      @booking.user_id = current_user.user_id
      @booking.request_id = @request
    end
    authorize @booking
    if @booking.save
      redirect_to about_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :request_id)
  end

end
