class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]
  # after_action :set_status
  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def about
  end

  def create_booking
    @booking = Booking.new
    @user = current_user
    @request = Request.find(params[:request_id])
    @booking.user = @user
    @booking.request = @request

    if @booking.save
      @booking.update_attributes(accepted: true)
      @booking.request.update_attributes(accepted: true)
      redirect_to dashboard_path
    end
  end

  private

  # def set_status
  #   @booking.request.accepted = true
  #   @request.accepted = true
  # end
end
