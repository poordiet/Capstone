class DashboardController < ApplicationController
    def index
      @sales_total = DashboardCalculations.sales_total
    end
  
  end