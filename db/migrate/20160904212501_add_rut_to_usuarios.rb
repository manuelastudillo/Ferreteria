class AddRutToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :rut, :text
  end
end
