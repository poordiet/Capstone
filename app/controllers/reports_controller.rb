class ReportsController < ApplicationController
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
        @sales_by_month = ReportCalculations.sales_by_month
        @sales_by_month_by_status = ReportCalculations.sales_by_month_by_status
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
        @customers_by_month = ReportCalculations.customers_gained_by_month
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

    def current_and_last_year_sales_per_month_report
        @sales_by_month = ReportCalculations.sales_by_month
        @sales_by_month_by_status = ReportCalculations.sales_by_month_by_status
    end

    def most_profitable_service_report
        @service_totals = ReportCalculations.service_totals
    end

    def lifetime_sales_per_store_report
        @sales_by_store = ReportCalculations.sales_by_store
    end

    def customers_gained_report
        @customers = Customer.all
        @date_obtained = ReportCalculations.date_obtained
        @customers_by_month = ReportCalculations.customers_gained_by_month
    end
    
    def most_profitable_customers
        @customer_sales = ReportCalculations.customer_sales
    end

    def customers_with_most_appointments_report
        @customer_appointments = ReportCalculations.customer_appointments
    end

    def vaccines_expiring_report
        @pet_vaccinations = PetVaccination.all
    end

    def pet_birthdays_report
        @pets = Pet.all
        @appointments_for_week = ReportCalculations.appointments_for_week
    end

    def user_accounts_report
        @inactive_employees = ReportCalculations.inactive_employees
    end

    def grooming_appointment_report
        @appointments_for_week = ReportCalculations.appointments_for_week
    end

    
end