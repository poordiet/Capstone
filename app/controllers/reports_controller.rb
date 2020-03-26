class ReportsController < ApplicationController

    def index 
        @pet_vaccinations = PetVaccination.all
        @pets = Pet.all
    end

    
    
end