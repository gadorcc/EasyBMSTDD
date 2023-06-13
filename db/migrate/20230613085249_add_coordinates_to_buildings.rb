class AddCoordinatesToBuildings < ActiveRecord::Migration[7.0]
  def change
    add_column :buildings, :latitude, :float
    add_column :buildings, :longitude, :float
  end
end
