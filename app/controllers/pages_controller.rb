class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    if user_signed_in?
      @user = current_user
      if @user.worker
        redirect_to about_path
      elsif @user.customer
        redirect_to dashboard_path
      end
    end
  end

  def about
  end
end
