class EmployeeStoresController < ApplicationController
  before_action :set_employee_store, only: [:show, :edit, :update, :destroy]

  # GET /employee_stores
  # GET /employee_stores.json
  def index
    @employee_stores = EmployeeStore.all
  end

  # GET /employee_stores/1
  # GET /employee_stores/1.json
  def show
  end

  # GET /employee_stores/new
  def new
    @employee_store = EmployeeStore.new
  end

  # GET /employee_stores/1/edit
  def edit
  end

  # POST /employee_stores
  # POST /employee_stores.json
  def create
    @employee_store = EmployeeStore.new(employee_store_params)

    respond_to do |format|
      if @employee_store.save
        format.html { redirect_to @employee_store, notice: 'Employee store was successfully created.' }
        format.json { render :show, status: :created, location: @employee_store }
      else
        format.html { render :new }
        format.json { render json: @employee_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_stores/1
  # PATCH/PUT /employee_stores/1.json
  def update
    respond_to do |format|
      if @employee_store.update(employee_store_params)
        format.html { redirect_to @employee_store, notice: 'Employee store was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_store }
      else
        format.html { render :edit }
        format.json { render json: @employee_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_stores/1
  # DELETE /employee_stores/1.json
  def destroy
    @employee_store.destroy
    respond_to do |format|
      format.html { redirect_to employee_stores_url, notice: 'Employee store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_store
      @employee_store = EmployeeStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_store_params
      params.require(:employee_store).permit(:store_id, :employee_id, 
                                                        employees_attributes: [:state_id, :emp_first_name, :emp_last_name, :emp_primary_phone,
                                                        :emp_secondary_phone, :emp_email, :emp_hire_date, :emp_address, :emp_city,
                                                        :emp_zip], stores_attributes: [:store_id, :store_address, :store_city, :store_zip,
                                                        :store_phone])
    end
end
