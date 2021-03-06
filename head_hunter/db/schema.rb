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

ActiveRecord::Schema.define(version: 20161128011936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aspirantes", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "cedula"
    t.string   "sexo"
    t.string   "fecha"
    t.string   "correo"
    t.string   "contraseña"
    t.integer  "telefono"
    t.string   "estado"
    t.string   "municipio"
    t.integer  "celular"
    t.string   "discapacidad"
    t.string   "intereses"
    t.string   "bachillerato"
    t.string   "mencion"
    t.string   "institucion"
    t.string   "estudios_universitarios"
    t.string   "institucion_otros_estudios"
    t.string   "area_universidad"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cliente"
    t.string   "area"
    t.string   "sede"
    t.string   "idioma"
    t.integer  "anosexp"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "time"
    t.string   "educacion"
    t.boolean  "discapacidad"
    t.text     "discapacidad_desc"
    t.boolean  "viaje"
    t.text     "etiqueta"
    t.string   "estado"
    t.string   "municipio"
    t.string   "sector"
    t.string   "idiomalvl"
  end

  create_table "competencia", id: false, force: :cascade do |t|
    t.integer "cedula"
    t.string  "competencia", limit: 40
  end

  create_table "competencies", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "nivel"
    t.json     "tag"
    t.integer  "charge_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "tipo"
    t.string   "etiqueta"
    t.index ["charge_id"], name: "index_competencies_on_charge_id", using: :btree
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rif"
    t.string   "contraseña"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiencia_laboral", id: false, force: :cascade do |t|
    t.integer "cedula"
    t.string  "empresa",        limit: 40
    t.string  "tiempo_empresa", limit: 40
    t.string  "cargo",          limit: 40
  end

  create_table "forms", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "competencies", "charges"
end
