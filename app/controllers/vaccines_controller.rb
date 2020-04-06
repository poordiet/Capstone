class VaccinesController < ApplicationController
  before_action :set_vaccine, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin == true
      flash.alert = "You must be an Admin to access this page!"
      redirect_to root_path
    end
  end
  # GET /vaccines
  # GET /vaccines.json
  def index
    @vaccines = Vaccine.all
  end

  # GET /vaccines/1
  # GET /vaccines/1.json
  def show
  end

  # GET /vaccines/new
  def new
    @vaccine = Vaccine.new
  end

  # GET /vaccines/1/edit
  def edit
  end

  # POST /vaccines
  # POST /vaccines.json
  def create
    @vaccine = Vaccine.new(vaccine_params)

    respond_to do |format|
      if @vaccine.save
        format.html { redirect_to @vaccine, success: 'Vaccine was successfully created.' }
        format.json { render :show, status: :created, location: @vaccine }
      else
        format.html { render :new }
        format.json { render json: @vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccines/1
  # PATCH/PUT /vaccines/1.json
  def update
    respond_to do |format|
      if @vaccine.update(vaccine_params)
        format.html { redirect_to @vaccine, success: 'Vaccine was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccine }
      else
        format.html { render :edit }
        format.json { render json: @vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccines/1
  # DELETE /vaccines/1.json
  def destroy
    @vaccine.destroy
    respond_to do |format|
      format.html { redirect_to vaccines_url, success: 'Vaccine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccine
      @vaccine = Vaccine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaccine_params
      params.require(:vaccine).permit(:vaccine_name, :vaccine_description, :vaccine_required,
                                      pet_vaccinations_attributes: [:id, :vaccine_id, :date_given, :duration, :date_expire])
    end
end
