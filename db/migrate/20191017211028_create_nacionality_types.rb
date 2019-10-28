class CreateNacionalityTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :nacionality_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
