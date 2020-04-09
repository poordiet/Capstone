class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  #petergate(roles: [:admin, :editor], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :validatable
  
  belongs_to :employee, :class_name => 'Employee', :foreign_key => 'employee_id'


  # Checks to see if employee already has an account to the application
   

  # Form Validations
  validates :employee, presence: true
  # does not work for some reason - validates :admin, presence: true

  validate :password_complexity
  
 def password_complexity
    if password.present? && !password.match('^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
      errors.add :password, "must contain a minimum of eight characters, at least one uppercase letter, one lowercase letter and one number"
    end
 end
  
end
