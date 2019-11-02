class CreateUsersIdioms < ActiveRecord::Migration[6.0]
  def change
    create_table :users_idioms do |t|
      t.belongs_to :user, index: true
      t.string :name_idiom
      t.string :to_speak
      t.string :to_read
      t.string :to_write

      t.timestamps
    end
  end
end
