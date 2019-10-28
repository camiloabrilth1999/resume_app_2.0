class UsersIdiom < ApplicationRecord
  belongs_to :user

  validates :name_idiom, presence: true
  validates :to_speak, presence: true
  validates :to_read, presence: true
  validates :to_write, presence: true
end
