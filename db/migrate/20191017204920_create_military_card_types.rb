class CreateMilitaryCardTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :military_card_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
