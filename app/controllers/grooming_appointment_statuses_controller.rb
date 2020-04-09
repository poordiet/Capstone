class GroomingAppointmentStatusesController < ApplicationController
  before_action :set_grooming_appointment_status, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /grooming_appointment_statuses
  def index
    @grooming_appointment_statuses = GroomingAppointmentStatus.all
  end

  # GET /grooming_appointment_statuses/1
  def show
  end

  # GET /grooming_appointment_statuses/new
  def new
    @grooming_appointment_status = GroomingAppointmentStatus.new
  end

  # GET /grooming_appointment_statuses/1/edit
  def edit
  end

  # POST /grooming_appointment_statuses
  def create
    @grooming_appointment_status = GroomingAppointmentStatus.new(grooming_appointment_status_params)

    if @grooming_appointment_status.save
      redirect_to @grooming_appointment_status, notice: 'Grooming appointment status was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grooming_appointment_statuses/1
  def update
    if @grooming_appointment_status.update(grooming_appointment_status_params)
      redirect_to @grooming_appointment_status, notice: 'Grooming appointment status was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grooming_appointment_statuses/1
  def destroy
    @grooming_appointment_status.destroy
    redirect_to grooming_appointment_statuses_url, notice: 'Grooming appointment status was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grooming_appointment_status
      @grooming_appointment_status = GroomingAppointmentStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grooming_appointment_status_params
      params.require(:grooming_appointment_status).permit(:status, :description)
    end
end
