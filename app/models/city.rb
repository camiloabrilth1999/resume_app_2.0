class City < ApplicationRecord
  has_many :users
  has_many :employments
  belongs_to :department
end
