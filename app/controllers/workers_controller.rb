class WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  def index
    @workers = Worker.all
  end

  def show
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to workers_path
    else
      redirect_to new_worker_path
    end
  end

  def edit
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      redirect_to worker_path(@worker)
    else
      redirect_to edit_worker_path(@worker)
    end
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    redirect_to workers_path
  end


  private

  def worker_params
    params.require(:worker).permit(:name, :description, :price, :urgency, :category)
  end

  def set_worker
    @worker = Worker.find(params[:id])
  end


end
