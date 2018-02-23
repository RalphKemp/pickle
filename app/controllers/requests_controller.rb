class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = policy_scope(Request)
  end

  def show
  end

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    authorize @request
    if @request.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to request_path(@request)
    else
      redirect_to edit_request_path(@request)
    end
  end

  def destroy
    @request.destroy
    redirect_to root_path
  end

  private

  def request_params
    params.require(:request).permit(:name, :description, :price, :urgency, :category)
  end

  def set_request
    @request = request.find(params[:id])
    authorize @request
  end

end
