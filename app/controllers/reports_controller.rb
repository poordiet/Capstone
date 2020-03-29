class ReportsController < ApplicationController

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
    end

    def sales_reports
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
    end

    def customer_reports
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
    end

    def vaccine_reports
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
    end
    
    
end