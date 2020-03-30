class PetVaccination < ApplicationRecord
  #attr_accessible :vaccine_id, :vaccine_name
  belongs_to :vaccine
  belongs_to :pet

  # Calculate Vaccination Expiration Date from Date Given and Date Expire
  before_update :update_expiration

  # Update Expiration
  def update_expiration
    calculate_expiration(self.date_given, self.duration, self.date_expire)
  end  


  def calculate_expiration(date_given, duration, date_expire)
    if !duration.nil? && !date_given.nil?

      puts "This is in the pet vaccination model in the calculate_expiration method"
      duration = duration.to_f

      if duration == 0.5
        duration = 6
        duration = duration.to_i.months
      else
        duration = duration.to_i.years
      end 

      self.date_expire = date_given + duration
  end

end

# form validation
validate :date_given_or_date_expire

def date_given_or_date_expire
  unless (!date_given.blank? && !duration.blank?) || !date_expire.blank? 
    errors.add(:base, "Specify date given AND duration, or any combination with date expire")
  end
end

end
