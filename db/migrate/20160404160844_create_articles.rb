class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
