class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def about
  end

  def create_booking
    @booking = Booking.new
    if current_user.worker
      @user = current_user
    end
    @request = Request.find(params[:request_id])
    @booking.user = @user
    @booking.request = @request
    if @booking.save
      redirect_to about_path
    else
      render :new
    end
  end

end
