class IncidentStatusesController < ApplicationController
  before_action :set_incident_status, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin == true
      flash.alert = "You must be an Admin to access this page!"
      redirect_to root_path
    end
  end
  # GET /incident_statuses
  # GET /incident_statuses.json
  def index
    @incident_statuses = IncidentStatus.all
  end

  # GET /incident_statuses/1
  # GET /incident_statuses/1.json
  def show
  end

  # GET /incident_statuses/new
  def new
    @incident_status = IncidentStatus.new
  end

  # GET /incident_statuses/1/edit
  def edit
  end

  # POST /incident_statuses
  # POST /incident_statuses.json
  def create
    @incident_status = IncidentStatus.new(incident_status_params)

    respond_to do |format|
      if @incident_status.save
        format.html { redirect_to @incident_status, notice: 'Incident status was successfully created.' }
        format.json { render :show, status: :created, location: @incident_status }
      else
        format.html { render :new }
        format.json { render json: @incident_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incident_statuses/1
  # PATCH/PUT /incident_statuses/1.json
  def update
    respond_to do |format|
      if @incident_status.update(incident_status_params)
        format.html { redirect_to @incident_status, notice: 'Incident status was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident_status }
      else
        format.html { render :edit }
        format.json { render json: @incident_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incident_statuses/1
  # DELETE /incident_statuses/1.json
  def destroy
    @incident_status.destroy
    respond_to do |format|
      format.html { redirect_to incident_statuses_url, notice: 'Incident status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident_status
      @incident_status = IncidentStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incident_status_params
      params.require(:incident_status).permit(:status, :definition)
    end
end
