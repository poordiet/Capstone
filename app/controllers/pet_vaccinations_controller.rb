class PetVaccinationsController < ApplicationController
  before_action :set_pet_vaccination, only: [:show, :edit, :update, :destroy]

  # GET /pet_vaccinations
  # GET /pet_vaccinations.json
  def index
    @pet_vaccinations = PetVaccination.all
  end

  # GET /pet_vaccinations/1
  # GET /pet_vaccinations/1.json
  def show
  end

  # GET /pet_vaccinations/new
  def new
    @pet_vaccination = PetVaccination.new
  end

  # GET /pet_vaccinations/1/edit
  def edit
  end

  # POST /pet_vaccinations
  # POST /pet_vaccinations.json
  def create
    @pet_vaccination = PetVaccination.new(pet_vaccination_params)

    respond_to do |format|
      if @pet_vaccination.save
        format.html { redirect_to @pet_vaccination, notice: 'Pet vaccination was successfully created.' }
        format.json { render :show, status: :created, location: @pet_vaccination }
      else
        format.html { render :new }
        format.json { render json: @pet_vaccination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_vaccinations/1
  # PATCH/PUT /pet_vaccinations/1.json
  def update
    respond_to do |format|
      if @pet_vaccination.update(pet_vaccination_params)
        format.html { redirect_to @pet_vaccination, notice: 'Pet vaccination was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_vaccination }
      else
        format.html { render :edit }
        format.json { render json: @pet_vaccination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_vaccinations/1
  # DELETE /pet_vaccinations/1.json
  def destroy
    @pet_vaccination.destroy
    respond_to do |format|
      format.html { redirect_to pet_vaccinations_url, notice: 'Pet vaccination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_vaccination
      @pet_vaccination = PetVaccination.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_vaccination_params
      params.require(:pet_vaccination).permit(:vaccine_id, :pet_id, :date_given, :date_expire,
                                              vaccines_attributes: [:id, :vaccine_name])
    end
end
