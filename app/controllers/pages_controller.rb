class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_before_action :authenticate_worker!, only: [:home]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def user_dashboard
    @bookings = policy_scope(Booking)
    if user_signed_in?
      @user = current_user
    else
      redirect_to jobs_path
    end
  end

end
