class PetVaccination < ApplicationRecord
  #attr_accessible :vaccine_id, :vaccine_name
  belongs_to :vaccine
  belongs_to :pet

  def calculate_expiration(date_given, duration, date_expire)
    if !duration.empty? && !date_given.empty? && date_expire.empty?

      duration = duration.to_f
      date_given = Date.parse(date_given)

      if duration == 0.5
        duration = 6
        duration = duration.to_i.months
      else
        duration = duration.to_i.years
      end 

      self.date_expire = date_given + duration
  end

end

validate :date_given_or_date_expire



def date_given_or_date_expire
  unless (!date_given.blank? && !duration.blank?) || !date_expire.blank? 
    errors.add(:base, "Specify date given AND duration, or any combination with date expire")
  end
end

end
