class GroomingServicesController < ApplicationController
  before_action :set_grooming_service, only: [:show, :edit, :update, :destroy]

  # GET /grooming_services
  # GET /grooming_services.json
  def index
    @grooming_services = GroomingService.all
  end

  # GET /grooming_services/1
  # GET /grooming_services/1.json
  def show
  end

  # GET /grooming_services/new
  def new
    @grooming_service = GroomingService.new
    @grooming_appointment_id = params[:grooming_appointment_id]
    session[:prev_url] = request.referer
    
  end

  # GET /grooming_services/1/edit
  def edit
    session[:prev_url] = request.referer
  end

  # POST /grooming_services
  # POST /grooming_services.json
  def create
    
    @grooming_service = GroomingService.new(grooming_service_params)
    @grooming_appointment_id = @grooming_service.grooming_appointment.id

    respond_to do |format|
      if @grooming_service.save
        format.html {  redirect_to session.delete(:prev_url), success: "Grooming Service was successfully created."}
        #format.html { redirect_to @grooming_service, notice: 'Grooming service was successfully created.' }
        #format.json { render :show, status: :created, location: @grooming_service }
      else
        format.html { render :new }
        format.json { render json: @grooming_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grooming_services/1
  # PATCH/PUT /grooming_services/1.json
  def update
    respond_to do |format|
      if @grooming_service.update(grooming_service_params)
        format.html {  redirect_to session.delete(:prev_url), success: "Grooming Service was successfully updated."}
        #format.html { redirect_to @grooming_service, notice: 'Grooming service was successfully updated.' }
        #format.json { render :show, status: :ok, location: @grooming_service }
      else
        format.html { render :edit }
        format.json { render json: @grooming_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grooming_services/1
  # DELETE /grooming_services/1.json
  def destroy
    @grooming_service.destroy
   # redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.html {redirect_back fallback_location: root_path, success: 'Grooming Service was succesfully deleted'}
    end
    #respond_to do |format|
     # format.html { redirect_to grooming_services_url, notice: 'Grooming service was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grooming_service
      @grooming_service = GroomingService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grooming_service_params
      params.require(:grooming_service).permit(:style_id, :service_id, :grooming_appointment_id, :employee_id, :service_amount, :service_amount, :service_amount_notes)
    end
end
