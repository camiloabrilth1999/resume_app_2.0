class UsersOcupation < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
  validates :years, presence: true
  validates :months, presence: true
  
end
