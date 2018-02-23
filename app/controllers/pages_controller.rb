class PagesController < ApplicationController
  skip_before_action :authenticate!, only: [:home, :about]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end

    if worker_signed_in?
      redirect_to about_path
    end
  end

  def about
  end
end
