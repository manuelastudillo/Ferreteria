class AddCOlumnToVentas < ActiveRecord::Migration
  def change
  	add_column :ventas, :boleta_id, :integer
  end
end
