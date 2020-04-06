class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin == true
      flash.alert = "You must be an Admin to access this page!"
      redirect_to root_path
    end
  end
  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
  end

  # GET /incidents/1
  # GET /incidents/1.json
  def show
  end

  # GET /incidents/new
  def new
    session[:prev_url] = request.referer
    @grooming_appointment_id = params[:grooming_appointment_id]
    @appt_time = params[:appt_time]
    @appt_date = params[:appt_date]
    @pet_name = params[:pet_name]
    @incident = Incident.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @grooming_appointment = GroomingAppointment.find(params[:grooming_appointment_id])

    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, success: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        @grooming_appointment_id = @grooming_appointment.id
        @appt_date = @grooming_appointment.appt_date.strftime("%b %d %Y")
        @appt_time = @grooming_appointment.appt_time.strftime("%I:%M%p")
        @pet_name = @grooming_appointment.pet.pet_name
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, success: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, success: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incident_params
      params.require(:incident).permit(:grooming_appointment_id, :incident_notes, :incident_cost, :incident_status_id)
    end
end
