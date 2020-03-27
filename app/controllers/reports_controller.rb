class ReportsController < ApplicationController

    def index 
        @pet_vaccinations = PetVaccination.all
        @pets = Pet.all
        @customers = Customer.all
    end

    
    
end