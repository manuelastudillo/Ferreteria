# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160621233857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias", force: :cascade do |t|
    t.text     "nom_cat"
    t.string   "abre_cat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.text     "nom_prod"
    t.string   "abre_pro"
    t.string   "marca"
    t.text     "codigo_barras"
    t.integer  "comision"
    t.integer  "stock"
    t.integer  "stockminimo"
    t.integer  "precio_compra"
    t.integer  "precio_venta"
    t.integer  "descuento"
    t.text     "descripcion"
    t.integer  "proveedor_id"
    t.integer  "categoria_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.text     "nom_prov"
    t.string   "abre_prov"
    t.text     "r_social"
    t.text     "rut"
    t.text     "domicilio"
    t.integer  "fax"
    t.integer  "telefono1"
    t.integer  "telefono2"
    t.text     "web"
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "productos", "categorias"
  add_foreign_key "productos", "proveedores", column: "proveedor_id"
end
