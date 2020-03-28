class ReportsController < ApplicationController

    def index 
        @pet_vaccinations = PetVaccination.all
        @pets = Pet.all
        @customers = Customer.all
        @expired_vaccines = ReportCalculations.expired_vaccines
    end

    
    
end