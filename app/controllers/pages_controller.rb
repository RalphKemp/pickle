class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    if user_signed_in?
      @user = current_user
    else
      redirect_to jobs_path
    end
  end

end
