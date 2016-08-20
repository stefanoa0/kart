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

ActiveRecord::Schema.define(version: 20160820182140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria_produtos", force: :cascade do |t|
    t.string   "nome_categoria"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "login_id"
    t.string   "email"
    t.string   "password_digest"
  end

  add_index "clientes", ["login_id"], name: "index_clientes_on_login_id", using: :btree

  create_table "compra_has_produtos", force: :cascade do |t|
    t.integer  "compra_id"
    t.integer  "produto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
  end

  add_index "compra_has_produtos", ["cliente_id"], name: "index_compra_has_produtos_on_cliente_id", using: :btree
  add_index "compra_has_produtos", ["compra_id"], name: "index_compra_has_produtos_on_compra_id", using: :btree
  add_index "compra_has_produtos", ["produto_id"], name: "index_compra_has_produtos_on_produto_id", using: :btree

  create_table "compras", force: :cascade do |t|
    t.datetime "data"
    t.integer  "quantidade"
    t.integer  "pagamento_id"
    t.integer  "cliente_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "endereco_id"
  end

  add_index "compras", ["cliente_id"], name: "index_compras_on_cliente_id", using: :btree
  add_index "compras", ["endereco_id"], name: "index_compras_on_endereco_id", using: :btree
  add_index "compras", ["pagamento_id"], name: "index_compras_on_pagamento_id", using: :btree

  create_table "enderecos", force: :cascade do |t|
    t.string   "rua"
    t.string   "bairro"
    t.string   "numero"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
  end

  add_index "enderecos", ["cliente_id"], name: "index_enderecos_on_cliente_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "logins", ["email"], name: "index_logins_on_email", unique: true, using: :btree
  add_index "logins", ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true, using: :btree

  create_table "pagamentos", force: :cascade do |t|
    t.integer  "num_parcelas"
    t.integer  "tipo_pagamento_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "pagamentos", ["tipo_pagamento_id"], name: "index_pagamentos_on_tipo_pagamento_id", using: :btree

  create_table "produtos", force: :cascade do |t|
    t.integer  "categoria_produto_id"
    t.string   "nome"
    t.text     "descricao"
    t.float    "preco"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
  end

  add_index "produtos", ["categoria_produto_id"], name: "index_produtos_on_categoria_produto_id", using: :btree

  create_table "tipo_pagamentos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clientes", "logins"
  add_foreign_key "compra_has_produtos", "clientes"
  add_foreign_key "compra_has_produtos", "compras"
  add_foreign_key "compra_has_produtos", "produtos"
  add_foreign_key "compras", "clientes"
  add_foreign_key "compras", "enderecos"
  add_foreign_key "compras", "pagamentos"
  add_foreign_key "enderecos", "clientes"
  add_foreign_key "pagamentos", "tipo_pagamentos"
  add_foreign_key "produtos", "categoria_produtos"
end
