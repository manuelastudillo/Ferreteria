class ForeingnUsuario < ActiveRecord::Migration
  def change
  	add_foreign_key :usuarios, :comunas, column: :comuna_id, primary_key: "id"
  	add_foreign_key :usuarios, :roles, column: :rol_id, primary_key: "id"
end
end
