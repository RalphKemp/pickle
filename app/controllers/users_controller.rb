class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :dashboard]
  skip_after_action :verify_authorized, only: [:index, :show]


  def index
    @users = policy_scope(User).all
    @workers = @users.where(worker: true)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    authorize @user
  end

  def update
    @user.update(user_params)
    redirect_to dashboard_path
  end

  def dashboard
    @user = current_user
    @requests = @user.requests
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    @user = current_user
  end

end
