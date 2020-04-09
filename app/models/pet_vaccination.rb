class PetVaccination < ApplicationRecord
  #attr_accessible :vaccine_id, :vaccine_name
  belongs_to :vaccine
  belongs_to :pet

  # Calculate Vaccination Expiration Date from Date Given and Date Expire
  before_update :update_expiration

  # Update Expiration
  def update_expiration
    duration = self.duration
    date_given = self.date_given
    date_expire = self.date_expire
    calculate_expiration(date_given, duration, date_expire)
  end  


  def calculate_expiration(date_given, duration, date_expire)
    if !duration.nil? && !date_given.nil?

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
validate :date_given_before_expire


def date_given_or_date_expire
  unless (!date_given.blank? && !duration.blank?) || !date_expire.blank? 
    errors.add(:base, "Specify date given AND duration, or any combination with date expire")
  end
end

  # Checks to see if the date_given is before date_expire
  def date_given_before_expire
    if date_given.present? && date_expire.present? && (date_given > date_expire || date_given == date_expire)
      errors.add(:date_given, "can't be on or after date expired")
    end
  end  

end
