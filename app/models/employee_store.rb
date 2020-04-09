class EmployeeStore < ApplicationRecord
  belongs_to :store
  belongs_to :employee

  #validate :no_repeat_employee_store
  

   # Validates that a duplicate employee store is not entered

   def no_repeat_employee_store
      self.employee.employee_stores.each do |employee_store|
        if self.store.store_name.upcase == employee_store.store.store_name.upcase
           errors.add(:employee, "is already assigned to that store")
        end
    end
  end



end
