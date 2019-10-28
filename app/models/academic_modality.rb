class AcademicModality < ApplicationRecord
  has_many :users_academic_modalities
  has_many :users, through: :users_academic_modalities
end
