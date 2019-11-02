class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :first_surname, :string
    add_column :users, :second_surname, :string
    add_column :users, :number_phone, :string
    add_column :users, :birth_date, :date
    add_column :users, :country_nationality, :string
    add_column :users, :number_national_identifier, :string
    add_column :users, :address, :string
    add_column :users, :number_military_card, :string
    add_column :users, :dm_military_card, :string


  end
end
