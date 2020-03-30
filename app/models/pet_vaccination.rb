class PetVaccination < ApplicationRecord
  #attr_accessible :vaccine_id, :vaccine_name
  belongs_to :vaccine
  belongs_to :pet

  def calculate_expiration(date_given, duration)
    if !duration=="" && !date_given ==""

      duration = duration.to_f
      Date.parse(date_given)

      if duration == 0.5
        duration = 6
        duration = duration.to_i.months
      else
        duration = duration.years
      end 

      self.date_expire = date_given + duration
  end

end

end
