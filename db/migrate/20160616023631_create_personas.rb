class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :prioridad
      t.boolean :activo

      t.timestamps null: false
    end
  end
end
