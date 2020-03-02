class PhotoTypesController < ApplicationController
  before_action :set_photo_type, only: [:show, :edit, :update, :destroy]

  # GET /photo_types
  # GET /photo_types.json
  def index
    @photo_types = PhotoType.all
  end

  # GET /photo_types/1
  # GET /photo_types/1.json
  def show
  end

  # GET /photo_types/new
  def new
    @photo_type = PhotoType.new
  end

  # GET /photo_types/1/edit
  def edit
  end

  # POST /photo_types
  # POST /photo_types.json
  def create
    @photo_type = PhotoType.new(photo_type_params)

    respond_to do |format|
      if @photo_type.save
        format.html { redirect_to @photo_type, notice: 'Photo type was successfully created.' }
        format.json { render :show, status: :created, location: @photo_type }
      else
        format.html { render :new }
        format.json { render json: @photo_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_types/1
  # PATCH/PUT /photo_types/1.json
  def update
    respond_to do |format|
      if @photo_type.update(photo_type_params)
        format.html { redirect_to @photo_type, notice: 'Photo type was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_type }
      else
        format.html { render :edit }
        format.json { render json: @photo_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_types/1
  # DELETE /photo_types/1.json
  def destroy
    @photo_type.destroy
    respond_to do |format|
      format.html { redirect_to photo_types_url, notice: 'Photo type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_type
      @photo_type = PhotoType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_type_params
      params.require(:photo_type).permit(:photo_type)
    end
end
