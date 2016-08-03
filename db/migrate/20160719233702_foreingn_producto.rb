class ForeingnProducto < ActiveRecord::Migration
  def change
    add_foreign_key :productos, :categorias ,column: :categoria_id, primary_key: "id"
    add_foreign_key :productos, :provedors,column: :proveedor_id, primary_key: "id"

  end
end
