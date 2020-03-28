class ReportCalculations

    def self.expired_vaccines
        PetVaccination.find_by_sql("select date_expire from pet_vaccinations where date_expire < CURRENT_DATE")
    end

end
