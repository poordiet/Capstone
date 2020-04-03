class GroomingAppointmentsController < ApplicationController
  before_action :set_grooming_appointment, only: [:show, :edit, :update, :destroy]

  # GET /grooming_appointments
  # GET /grooming_appointments.json
  def index
    @grooming_appointments = GroomingAppointment.all
  end

  # GET /grooming_appointments/1
  # GET /grooming_appointments/1.json
  def show
  end

  # GET /grooming_appointments/new
  def new
    session[:prev_url] = request.referer
    @pet_name = params[:pet_name]
    @pet_id = params[:pet_id]
    @pet = Pet.find(params[:pet_id])
    @customer_first_name = params[:customer_first_name]
    @customer_last_name = params[:customer_last_name]
    @grooming_appointment = GroomingAppointment.new
    1.times do
      pet_photo = @grooming_appointment.pet_photos.build
    end
  end

  # GET /grooming_appointments/1/edit
  def edit
    session[:prev_url] = request.referer
    @grooming_appointment.grooming_services
    @grooming_appointment.pet_photos
  end

  # POST /grooming_appointments
  # POST /grooming_appointments.json
  def create

    @pet = Pet.find(params[:pet_id])
    @customer = Customer.find(@pet.customer.id)
    
    @grooming_appointment = GroomingAppointment.new(grooming_appointment_params)

    respond_to do |format|
      if @grooming_appointment.save
        format.html { redirect_to @grooming_appointment, notice: 'Grooming appointment was successfully created.' }
        format.json { render :show, status: :created, location: @grooming_appointment }
      else
        @pet_id = @pet.id
        @pet_name = @pet.pet_name
        @customer_first_name = @customer.customer_first_name
        @customer_last_name = @customer.customer_last_name
        format.html { render :new }
        format.json { render json: @grooming_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grooming_appointments/1
  # PATCH/PUT /grooming_appointments/1.json
  def update
    respond_to do |format|
      if @grooming_appointment.update(grooming_appointment_params)
        format.html { redirect_to @grooming_appointment, notice: 'Grooming appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @grooming_appointment }
      else
        format.html { render :edit }
        format.json { render json: @grooming_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grooming_appointments/1
  # DELETE /grooming_appointments/1.json
  def destroy
    @grooming_appointment.destroy
    respond_to do |format|
      format.html { redirect_to grooming_appointments_url, notice: 'Grooming appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grooming_appointment
      @grooming_appointment = GroomingAppointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grooming_appointment_params
      params.require(:grooming_appointment).permit(:pet_id, :store_id, :payment_type_id, :appt_date, :appt_time, :appt_blades, :appt_total, :appt_total, :appt_notes, :customer_feedback, :vac_current, :vac_current_date,
      grooming_services_attributes: [:id,:service_id, :employee_id, :service_amount, :service_amount_notes],
      grooming_styles_attributes: [:id, :style_id, :grooming_appointment_id, :groom_style_notes],
      pet_photos_attributes: [:id, :pet_id, :photo_type_id, :photo_link, :photo_description, :image],
      photo_types_attributes: [:id, :photo_type],
      incidents_attributes: [:id, :grooming_appointment_id, :incident_notes, :incident_cost, :incident_cost])
    end
end
