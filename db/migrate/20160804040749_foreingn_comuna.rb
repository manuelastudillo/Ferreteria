class ForeingnComuna < ActiveRecord::Migration
  def change
    add_foreign_key :comunas, :provincias, column: :provincia_id, primary_key: "id"
    add_foreign_key :provincias, :regions, column: :region_id, primary_key: "id"
  end
end