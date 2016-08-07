class CreateCategoria < ActiveRecord::Migration
  def change
        create_table :categorias do |t|
      t.text     :nom_cat
      t.text   :abre_cat
      t.boolean :esta_cat
      t.string   :desc_cat
      t.timestamps null: false
    end
  end
end
