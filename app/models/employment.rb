class Employment < ApplicationRecord
  belongs_to :user
  belongs_to :city, optional: true

  validates :type_enterprise, presence: true
  validates :name_enterprise, presence: true
  validates :email_enterprise, presence: true
  validates :number_phone_enterprise, presence: true
  validates :address_enterprise, presence: true
  validates :charge_company, presence: true
  validates :dependency, presence: true
  validates :entry_date, presence: true
  validates :current_job, presence: true
  validates :city_enterprise_id, presence: true
end
