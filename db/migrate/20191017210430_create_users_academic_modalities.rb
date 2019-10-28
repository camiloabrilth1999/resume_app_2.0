class CreateUsersAcademicModalities < ActiveRecord::Migration[6.0]
  def change
    create_table :users_academic_modalities do |t|
      t.belongs_to :user, index: true
      t.belongs_to :academic_modality, index: true
      t.integer :number_approved_semesters
      t.string :graduate
      t.string :name_studies
      t.date :date_completation_studie
      t.string :number_professional_card

      t.timestamps
    end
  end
end
