class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    session[:prev_url] = request.referer
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    session[:prev_url] = request.referer
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, success: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, success: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, success: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:state_id, :customer_status_id, :customer_first_name, :customer_last_name, 
                                                  :customer_address, :customer_city, :customer_zip, 
                                                  :customer_primary_phone, :customer_secondary_phone, 
                                                  :customer_email, :date_obtained, :customer_notes,
                                                  pets_attributes: [:id, :_destroy, :pet_name, :pet_gender, :pet_birthdate,
                                                  :pet_allergies, :spayed_neutered, :pet_treat, :vet_name, :vet_phone, 
                                                  :pet_medical_issues, :pet_notes, :pet_color, :pet_breed, :pet_weight, :pet_status_id,
                                                  pet_vaccinations_attributes: [:id, :_destroy, :vaccine_id, :date_given, :duration, :date_expire]])
                                              
    end
end
