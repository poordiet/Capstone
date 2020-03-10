class PetStatusesController < ApplicationController
  before_action :set_pet_status, only: [:show, :edit, :update, :destroy]

  # GET /pet_statuses
  # GET /pet_statuses.json
  def index
    @pet_statuses = PetStatus.all
  end

  # GET /pet_statuses/1
  # GET /pet_statuses/1.json
  def show
  end

  # GET /pet_statuses/new
  def new
    @pet_status = PetStatus.new
  end

  # GET /pet_statuses/1/edit
  def edit
  end

  # POST /pet_statuses
  # POST /pet_statuses.json
  def create
    @pet_status = PetStatus.new(pet_status_params)

    respond_to do |format|
      if @pet_status.save
        format.html { redirect_to @pet_status, notice: 'Pet status was successfully created.' }
        format.json { render :show, status: :created, location: @pet_status }
      else
        format.html { render :new }
        format.json { render json: @pet_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_statuses/1
  # PATCH/PUT /pet_statuses/1.json
  def update
    respond_to do |format|
      if @pet_status.update(pet_status_params)
        format.html { redirect_to @pet_status, notice: 'Pet status was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_status }
      else
        format.html { render :edit }
        format.json { render json: @pet_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_statuses/1
  # DELETE /pet_statuses/1.json
  def destroy
    @pet_status.destroy
    respond_to do |format|
      format.html { redirect_to pet_statuses_url, notice: 'Pet status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_status
      @pet_status = PetStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_status_params
      params.require(:pet_status).permit(:status, :definition)
    end
end
