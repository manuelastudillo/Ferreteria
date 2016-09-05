class EliminarColumnasVenta < ActiveRecord::Migration
  def change
  	remove_column(:ventas,  :fecha)
  	remove_column(:ventas, :numero)
  	remove_column(:ventas, :monto)
  end
end
