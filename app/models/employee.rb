class Employee < ApplicationRecord
  belongs_to :state
  belongs_to :employee_status
  has_many :employee_stores
  has_many :stores, through: :employee_stores
  has_many :grooming_appointments
  has_many :grooming_services
  has_many :incidents

  accepts_nested_attributes_for :employee_stores, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :stores, reject_if: :all_blank, allow_destroy: true
  
  validates :emp_first_name, presence: true
  validates :emp_last_name, presence: true
  validates :emp_primary_phone, presence: true
  validates :emp_hire_date, presence: true
  validate :date_hired_no_dumb

  # Checks to see if the date_hired occurs before the business started
  def date_hired_no_dumb
    if emp_hire_date.present? && emp_hire_date.strftime("%Y") < "2017"
      errors.add(:emp_hire_date, "can't occur before the business started")
    end
  end  

  def employee_full_name
    "#{emp_first_name}  #{emp_last_name}, #{emp_primary_phone}"
  end

  # Get Active Employees
  def self.active_employees
    @active_employees = Service.find_by_sql("select id, emp_first_name || ' ' || emp_last_name || ', ' || emp_primary_phone AS employee_full_name from employees where employee_status_id = 1")
    
  end
end