class Store < ApplicationRecord
  belongs_to :state

  has_many :employees, through: :employee_stores
  has_many :employee_stores
  has_many :employees
  has_many :grooming_appointments

  validates :store_name, presence: true
  validates :store_address, presence: true
  validates :store_city, presence: true
  validates :store_zip, presence: true
  validates :store_phone, presence: true
  
  validate :no_repeats, :on => :create

  def no_repeats
      Store.all.each do |store|
          if self.store_name.upcase == store.store_name.upcase
              errors.add(:store_name, "already exists")
          end
      end
  end

end
