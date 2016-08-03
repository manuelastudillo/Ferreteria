class Categoria < ActiveRecord::Migration
  def change
     create_table :categorias do |t|
      t.text     :nom_cat
      t.string   :abre_cat

      t.timestamps null: false
    end
  end
end
