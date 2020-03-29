class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
    1.times do
      pet_photo = @pet.pet_photos.build
    end
  end

    # GET /pets/newnew
    def new
      @customer_id = params[:customer_id]
      @customer_first_name = params[:customer_first_name]
      @customer_last_name = params[:customer_last_name]

      @pet = Pet.new
      1.times do
        pet_photo = @pet.pet_photos.build
      end
    end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create

    @customer = Customer.find(params[:customer_id])
    
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        @customer_id = @customer.id
        @customer_first_name = @customer.customer_first_name
        @customer_last_name = @customer.customer_last_name
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:customer_id, :pet_status_id, :pet_name, :pet_gender, :pet_birthdate, :pet_allergies,
                                  :spayed_neutered, :pet_treat, :vet_name, :vet_phone, :pet_medical_issues, 
                                  :pet_notes, :pet_color, :pet_breed, :pet_weight, :customer_id,
                                  vaccines_attributes: [:id, :vaccine_name],
                                  pet_vaccinations_attributes: [:id, :vaccine_id, :date_given, :duration, :date_expire],
                                  pet_photos_attributes: [:id, :photo_type_id, :grooming_appt_id, :photo_link, :photo_description, :image],
                                  photo_types_attributes: [:id, :photo_type],
                                  grooming_appointment_attributes: [:id, :appt_date, :appt_blades, :appt_total],
                                  service_attributes: [:id, :style_name])
    end


end
