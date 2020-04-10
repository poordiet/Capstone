class DashboardController < ApplicationController

    def index
      @sales_total = DashboardCalculations.sales_total
      @sales_by_day = DashboardCalculations.sales_by_day
      @grooming_per_day = DashboardCalculations.grooming_per_day
      @grooming_appointments = GroomingAppointment.all
      @pets = Pet.all
      @appointments_for_today = DashboardCalculations.appointments_for_today
      @customers = Customer.all
      @cancelled_appointments_for_today = DashboardCalculations.cancelled_appointments_for_today
    end
  
  end