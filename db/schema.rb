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

ActiveRecord::Schema.define(version: 20160905190221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boletas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "numero"
    t.integer  "monto"
    t.boolean  "factura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.text     "nombre"
    t.text     "abreviacion"
    t.boolean  "estado"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.text     "nombre"
    t.integer  "comuna_id"
    t.text     "rut"
    t.text     "domicilio"
    t.integer  "telefono1"
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.text     "nombre"
    t.text     "abreviacion"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.text     "nombre"
    t.string   "abreviacion"
    t.text     "codigo_barras"
    t.integer  "comision"
    t.integer  "stock"
    t.integer  "stockminimo"
    t.integer  "precio_compra"
    t.integer  "precio_venta"
    t.integer  "descuento"
    t.text     "descripcion"
    t.string   "foto"
    t.integer  "proveedor_id"
    t.integer  "categoria_id"
    t.integer  "marca_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.text     "nombre"
    t.string   "abreviacion"
    t.integer  "comuna_id"
    t.text     "razon_social"
    t.text     "rut"
    t.text     "domicilio"
    t.integer  "fax"
    t.integer  "telefono1"
    t.integer  "telefono2"
    t.text     "web"
    t.text     "email"
    t.text     "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "provincias", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regiones", force: :cascade do |t|
    t.string   "nombre"
    t.string   "corfo"
    t.string   "codigo"
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "nombre"
    t.string   "calle"
    t.integer  "telefono"
    t.integer  "telefono1"
    t.integer  "rol_id"
    t.integer  "comuna_id"
    t.datetime "fechaingreso"
    t.integer  "sueldo"
    t.text     "rut"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "ventas", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "usuario_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "boleta_id"
  end

  add_foreign_key "clientes", "comunas"
  add_foreign_key "comunas", "provincias"
  add_foreign_key "productos", "categorias"
  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "proveedors", "comunas"
  add_foreign_key "provincias", "regiones", column: "region_id"
  add_foreign_key "usuarios", "comunas"
  add_foreign_key "usuarios", "roles", column: "rol_id"
  add_foreign_key "ventas", "boletas"
  add_foreign_key "ventas", "clientes"
  add_foreign_key "ventas", "productos"
  add_foreign_key "ventas", "usuarios"
end
