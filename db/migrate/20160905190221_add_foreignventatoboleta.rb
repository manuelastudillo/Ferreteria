class AddForeignventatoboleta < ActiveRecord::Migration
  def change
  	  	add_foreign_key :ventas, :boletas, column: :boleta_id, primary_key: "id"

  end
end
