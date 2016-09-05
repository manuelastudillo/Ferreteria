class CreateBoleta < ActiveRecord::Migration
  def change
    create_table :boletas do |t|
      t.datetime :fecha
      t.integer :numero
      t.integer :monto
      t.boolean :factura

      t.timestamps null: false
    end
  end
end
