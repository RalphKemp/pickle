class WorkersController < ApplicationController
  before_action :authenticate_worker!
  before_action :set_worker, only: [:show, :edit, :update, :work]
  skip_after_action :verify_authorized, only: [:show]


  def index
    @workers = policy_scope(Worker).all
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def edit
    authorize @worker
  end

  def update
    @worker.update(worker_params)
    redirect_to dashboard_path
  end

  def work
    authorize @worker
  end

  private

  def worker_params
    params.require(:worker).permit(:name, :bio, :speciality, :location)
  end

  def set_worker
    @worker = current_worker
  end
end
