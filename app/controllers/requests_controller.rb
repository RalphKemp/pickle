class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]


  def index
    @requests = policy_scope(Request)
  end

  def show
    @user = current_user
  end

  def new
    @request = Request.new
    authorize @request
  end

  def create
    @request = Request.new(request_params)
    if current_user.customer
      @request.user = current_user
    end
    respond_to do |format|
      if @request.save
        format.html {redirect_to dashboard_path}
        format.js
      else
        format.html {render :new}
        format.js
      end
    end
    authorize @request
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
    @request = Request.find(params[:id])
    authorize @request
  end

end
