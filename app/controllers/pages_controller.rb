class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    @bookings = current_user.bookings.all

    if user_signed_in?
      @user = current_user
    else
      redirect_to jobs_path
    end
  end

end
