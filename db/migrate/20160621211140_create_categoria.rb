class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      
      t.text :nom_cat
      t.string :abre_cat
      

      t.timestamps null: false
    end
  end
end