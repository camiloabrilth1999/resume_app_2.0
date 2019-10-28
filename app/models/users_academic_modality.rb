class UsersAcademicModality < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :academic_modality

  validates :academic_modality_id, presence: true
  validates :number_approved_semesters, presence: true
  validates :graduate, presence: true
  validates :name_studies, presence: true

end
