class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.string :charge_company
      t.string :dependency
      t.date :entry_date
      t.date :retirement_date
      t.string :current_job
      t.string :type_enterprise
      t.string :name_enterprise
      t.string :email_enterprise
      t.string :number_phone_enterprise
      t.string :address_enterprise

      t.references :city_enterprise, index: true, foreign_key: {to_table: :cities}
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
