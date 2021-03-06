class PetPhotosController < ApplicationController
  before_action :set_pet_photo, only: [:show, :edit, :update, :destroy]

  # GET /pet_photos
  # GET /pet_photos.json
  def index
    @pet_photos = PetPhoto.all
  end

  # GET /pet_photos/1
  # GET /pet_photos/1.json
  def show
  end

  # GET /pet_photos/new
  def new

    @pet_name = params[:pet_name]
    @pet_id = params[:pet_id]
    @pet = Pet.find(params[:pet_id])
    @customer_first_name = params[:customer_first_name]
    @customer_last_name = params[:customer_last_name]
    @grooming_appointment_id = params[:grooming_appointment_id]
    @photo_type_id = params[:photo_type_id]


    @pet_photo = PetPhoto.new
    session[:prev_url] = request.referer
  end

  # GET /pet_photos/1/edit
  def edit
    session[:prev_url] = request.referer
  end

  # POST /pet_photos
  # POST /pet_photos.json
  def create

    @pet = Pet.find(params[:pet_id])
    @customer = Customer.find(@pet.customer.id)
    if !params[:grooming_appointment_id].empty?
      @grooming_appointment = GroomingAppointment.find(params[:grooming_appointment_id])
    end
    @photo_type_id = params[:photo_type_id]

    @pet_photo = PetPhoto.new(pet_photo_params)

    respond_to do |format|
      if @pet_photo.save
        format.html {  redirect_to session[:prev_url], success: "Pet Photo was successfully created."}
        #format.html { redirect_to @pet_photo, notice: 'Pet photo was successfully created.' }
        #format.json { render :show, status: :created, location: @pet_photo }
      else
        @pet_id = @pet.id
        @pet_name = @pet.pet_name
        @customer_first_name = @customer.customer_first_name
        @customer_last_name = @customer.customer_last_name
        if !@grooming_appointment.nil?
          @grooming_appointment_id = @grooming_appointment.id
        end
        @photo_type_id = params[:photo_type_id]
        format.html { render :new }
        format.json { render json: @pet_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_photos/1
  # PATCH/PUT /pet_photos/1.json
  def update

    respond_to do |format|
      if @pet_photo.update(pet_photo_params)
        format.html {  redirect_to session[:prev_url], success: "Pet Photo was successfully updated."}
        #format.html { redirect_to @pet_photo, notice: 'Pet photo was successfully updated.' }
        #format.json { render :show, status: :ok, location: @pet_photo }
     else
       format.html { render :edit }
       format.json { render json: @pet_photo.errors, status: :unprocessable_entity }
     end
  end
  end

  # DELETE /pet_photos/1
  # DELETE /pet_photos/1.json
  def destroy
    @pet_photo.destroy
    respond_to do |format|
      format.html { redirect_to pet_photos_url, notice: 'Pet photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_photo
      @pet_photo = PetPhoto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_photo_params
      params.require(:pet_photo).permit(:pet_id, :photo_type_id, :grooming_appointment_id, :photo_link, :photo_description, :image)
    end
end
