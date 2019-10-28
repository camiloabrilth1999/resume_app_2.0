class CreateUsersOcupations < ActiveRecord::Migration[6.0]
  def change
    create_table :users_ocupations do |t|
      t.belongs_to :user, index: true
      t.string :description
      t.integer :years
      t.integer :months

      t.timestamps
    end
  end
end
