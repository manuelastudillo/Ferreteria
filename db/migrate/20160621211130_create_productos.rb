class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.text :nom_prod
      t.string :abre_pro
      t.string :marca
      t.text :codigo_barras
      t.integer :comision
      t.integer :stock
      t.integer :stockminimo
      t.integer :precio_compra
      t.integer :precio_venta
      t.integer :descuento
      t.text :descripcion
      t.integer :proveedor_id
      t.integer :categoria_id

      t.timestamps null: false
    end
  end
end