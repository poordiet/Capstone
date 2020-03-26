class DashboardController < ApplicationController
    def index
      @sales_total = DashboardCalculations.sales_total
      @sales_by_day = DashboardCalculations.sales_by_day
      @grooming_per_day = DashboardCalculations.grooming_per_day
      @grooming_appointments = GroomingAppointment.all
    end
  
    

  end