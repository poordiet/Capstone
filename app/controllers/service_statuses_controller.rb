class ServiceStatusesController < ApplicationController
  before_action :set_service_status, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin == true
      flash.alert = "You must be an Admin to access this page!"
      redirect_to root_path
    end
  end
  
  # GET /service_statuses
  # GET /service_statuses.json
  def index
    @service_statuses = ServiceStatus.all
  end

  # GET /service_statuses/1
  # GET /service_statuses/1.json
  def show
  end

  # GET /service_statuses/new
  def new
    @service_status = ServiceStatus.new
  end

  # GET /service_statuses/1/edit
  def edit
  end

  # POST /service_statuses
  # POST /service_statuses.json
  def create
    @service_status = ServiceStatus.new(service_status_params)

    respond_to do |format|
      if @service_status.save
        format.html { redirect_to @service_status, notice: 'Service status was successfully created.' }
        format.json { render :show, status: :created, location: @service_status }
      else
        format.html { render :new }
        format.json { render json: @service_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_statuses/1
  # PATCH/PUT /service_statuses/1.json
  def update
    respond_to do |format|
      if @service_status.update(service_status_params)
        format.html { redirect_to @service_status, notice: 'Service status was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_status }
      else
        format.html { render :edit }
        format.json { render json: @service_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_statuses/1
  # DELETE /service_statuses/1.json
  def destroy
    @service_status.destroy
    respond_to do |format|
      format.html { redirect_to service_statuses_url, notice: 'Service status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_status
      @service_status = ServiceStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_status_params
      params.require(:service_status).permit(:service_status)
    end
end
