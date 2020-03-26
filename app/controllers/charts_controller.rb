class ChartsController < ApplicationController

  def sales_by_day
    render json: DashboardCalculations.sales_by_day
  end
    
  end