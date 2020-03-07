class GroomingStylesController < ApplicationController
  before_action :set_grooming_style, only: [:show, :edit, :update, :destroy]

  # GET /grooming_styles
  # GET /grooming_styles.json
  def index
    @grooming_styles = GroomingStyle.all
  end

  # GET /grooming_styles/1
  # GET /grooming_styles/1.json
  def show
  end

  # GET /grooming_styles/new
  def new
    @grooming_style = GroomingStyle.new
  end

  # GET /grooming_styles/1/edit
  def edit
  end

  # POST /grooming_styles
  # POST /grooming_styles.json
  def create
    @grooming_style = GroomingStyle.new(grooming_style_params)

    respond_to do |format|
      if @grooming_style.save
        format.html { redirect_to @grooming_style, notice: 'Grooming style was successfully created.' }
        format.json { render :show, status: :created, location: @grooming_style }
      else
        format.html { render :new }
        format.json { render json: @grooming_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grooming_styles/1
  # PATCH/PUT /grooming_styles/1.json
  def update
    respond_to do |format|
      if @grooming_style.update(grooming_style_params)
        format.html { redirect_to @grooming_style, notice: 'Grooming style was successfully updated.' }
        format.json { render :show, status: :ok, location: @grooming_style }
      else
        format.html { render :edit }
        format.json { render json: @grooming_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grooming_styles/1
  # DELETE /grooming_styles/1.json
  def destroy
    @grooming_style.destroy
    respond_to do |format|
      format.html { redirect_to grooming_styles_url, notice: 'Grooming style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grooming_style
      @grooming_style = GroomingStyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grooming_style_params
      params.require(:grooming_style).permit(:style_id, :grooming_appointment_id, :groom_style_notes)
    end
end
