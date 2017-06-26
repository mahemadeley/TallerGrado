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

ActiveRecord::Schema.define(version: 20170617192012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categorias", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clasificacions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nit"
    t.string "nombre"
    t.string "correo"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.bigint "cliente_id"
    t.bigint "pago_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_compras_on_cliente_id"
    t.index ["pago_id"], name: "index_compras_on_pago_id"
  end

  create_table "creditos", force: :cascade do |t|
    t.float "monto_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_compras", force: :cascade do |t|
    t.bigint "compra_id"
    t.bigint "producto_id"
    t.integer "cantidad"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_detalle_compras_on_compra_id"
    t.index ["producto_id"], name: "index_detalle_compras_on_producto_id"
  end

  create_table "detalle_creditos", force: :cascade do |t|
    t.bigint "cliente_id"
    t.bigint "credito_id"
    t.float "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_detalle_creditos_on_cliente_id"
    t.index ["credito_id"], name: "index_detalle_creditos_on_credito_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre_marca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.float "monto_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.bigint "clasificacion_id"
    t.bigint "marca_id"
    t.string "nombre"
    t.float "precio"
    t.integer "stock"
    t.date "vencimiento"
    t.date "produccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clasificacion_id"], name: "index_productos_on_clasificacion_id"
    t.index ["marca_id"], name: "index_productos_on_marca_id"
  end

  create_table "sucursal_productos", force: :cascade do |t|
    t.bigint "producto_id"
    t.bigint "sucursal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_sucursal_productos_on_producto_id"
    t.index ["sucursal_id"], name: "index_sucursal_productos_on_sucursal_id"
  end

  create_table "sucursals", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "zona"
    t.float "lon"
    t.float "lat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compras", "clientes"
  add_foreign_key "compras", "pagos"
  add_foreign_key "detalle_compras", "compras"
  add_foreign_key "detalle_compras", "productos"
  add_foreign_key "detalle_creditos", "clientes"
  add_foreign_key "detalle_creditos", "creditos"
  add_foreign_key "productos", "marcas"
  add_foreign_key "sucursal_productos", "productos"
  add_foreign_key "sucursal_productos", "sucursals"
end
