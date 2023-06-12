class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.text :address
      t.string :company
      t.string :building_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
