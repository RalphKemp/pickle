class UsersController < ApplicationController
  before_action :authenticate_user!
  skip_after_action :verify_policy_scoped, only: :edit

  def index
    @users = policy_scope(User).all
  end

  def show
    @user = user.find(params[:id])
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to dashboard_path
  end


  def user_dashboard
    @user = current_user
    @bookings = @user.bookings
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
