class UsersController < ApplicationController
  before_action :authenticate_user!
  skip_after_action :verify_policy_scoped, only: :edit

  def index
    @users = policy_scope(User).all
  end

  def show
    @user = User.find(params[:id])
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

  def dashboard
    @user = current_user
    authorize @user
    # means we need to create a related Pundit policy
  end

  private

  def user_params
    require.params(:user).permit(:name)
  end

end



