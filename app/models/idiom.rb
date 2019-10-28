class Idiom < ApplicationRecord
  has_many :users_idioms
  has_many :users, through: :users_idioms
end
