class SalesReportsController < ApplicationController
    before_action :check_admin

    def check_admin
      unless current_user.admin == true
        flash.alert = "You must be an Admin to access this page!"
        redirect_to root_path
      end
    end
    
    def index
        @pet_vaccinations = PetVaccination.all
        @pets = Pet.all
        @customers = Customer.all
        @grooming_services = GroomingService.all
        @expired_vaccines = ReportCalculations.expired_vaccines
        @service_totals = ReportCalculations.service_totals
        @sales_by_store = ReportCalculations.sales_by_store
        @date_obtained = ReportCalculations.date_obtained
        @customer_sales = ReportCalculations.customer_sales
        @customer_appointments = ReportCalculations.customer_appointments 
        @service_count = ReportCalculations.service_count
    end   

end
