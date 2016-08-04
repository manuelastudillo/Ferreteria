class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|

      t.text :nom_prov
      t.string :abre_prov
      t.text :r_social
      t.text :rut
      t.text :domicilio
      t.integer :fax
      t.integer :telefono1
      t.integer :telefono2
      t.text :web
      t.text :email
      t.text :desc_prov
      t.timestamps null: false
    end
  end
end
