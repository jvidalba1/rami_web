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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140910145322) do

  create_table "ciudades", :force => true do |t|
    t.string   "nombre"
    t.string   "departamento"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "documentos", :force => true do |t|
    t.string   "descripcion"
    t.string   "documento"
    t.integer  "inmueble_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "inmuebles", :force => true do |t|
    t.integer  "clase_inmueble"
    t.integer  "ciudad_id"
    t.string   "zona"
    t.integer  "tipo_negocio"
    t.string   "direccion"
    t.decimal  "area_disponible",         :precision => 15, :scale => 2
    t.string   "area_disponible_desc"
    t.decimal  "valor_mt2",               :precision => 15, :scale => 2
    t.decimal  "valor_total",             :precision => 15, :scale => 2
    t.string   "planos"
    t.decimal  "valor_admin",             :precision => 15, :scale => 2
    t.decimal  "predial",                 :precision => 15, :scale => 2
    t.decimal  "frente",                  :precision => 15, :scale => 2
    t.decimal  "fondo",                   :precision => 15, :scale => 2
    t.string   "otras_caracteristicas"
    t.string   "entorno"
    t.string   "info_adicional"
    t.date     "fecha_disponibilidad"
    t.date     "fecha_salida_inventario"
    t.integer  "anio_construccion"
    t.string   "normas_de_uso"
    t.decimal  "indice_ocupacion",        :precision => 15, :scale => 2
    t.decimal  "indice_construccion",     :precision => 15, :scale => 2
    t.integer  "nro_pisos"
    t.integer  "parqueadores"
    t.decimal  "densidad",                :precision => 15, :scale => 2
    t.string   "nombre_agente"
    t.string   "quien_refiere"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.integer  "propietario_id"
    t.decimal  "porcentaje_comision",     :precision => 15, :scale => 2
    t.decimal  "valor_inmueble",          :precision => 15, :scale => 2
    t.decimal  "altura",                  :precision => 15, :scale => 2
    t.date     "fecha_captado"
    t.string   "transporte"
    t.integer  "nro_pisos_permitidos"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.integer  "status"
    t.string   "nombre_inmueble"
  end

  create_table "interesados", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "email"
    t.text     "observaciones"
  end

  create_table "intermediarios", :force => true do |t|
    t.string   "telefono"
    t.string   "nombre"
    t.string   "email"
    t.date     "ult_fecha_contacto"
    t.string   "observaciones"
    t.integer  "inmueble_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "propietarios", :force => true do |t|
    t.string   "telefono"
    t.string   "direccion"
    t.string   "celular"
    t.string   "email"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
