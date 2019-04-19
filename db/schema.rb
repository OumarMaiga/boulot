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

ActiveRecord::Schema.define(version: 2019_04_19_103232) do

  create_table "cursus", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ecole"
    t.date "annee_debut"
    t.date "annee_fin"
    t.string "diplome"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cursus_on_user_id"
  end

  create_table "domaines", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_domaines_on_user_id"
  end

  create_table "entreprises", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "facebook_id"
    t.string "google_id"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "adresse"
    t.date "dateNaissance"
    t.string "status"
    t.integer "phone"
    t.string "categorie"
    t.boolean "etat"
    t.integer "domaine_id"
    t.string "description"
    t.index ["email"], name: "index_entreprises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_entreprises_on_reset_password_token", unique: true
  end

  create_table "experiences", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "poste"
    t.string "entreprise"
    t.date "annee_debut"
    t.date "annee_fin"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "langues", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "langue"
    t.string "niveau"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_langues_on_user_id"
  end

  create_table "offres", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "domaine_id"
    t.string "titre"
    t.integer "montan_min"
    t.integer "montant_max"
    t.boolean "etat", default: true
    t.text "description"
    t.date "date_close"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domaine_id"], name: "index_offres_on_domaine_id"
    t.index ["user_id"], name: "index_offres_on_user_id"
  end

  create_table "postulers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "offre_id"
    t.integer "montant"
    t.string "motivation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offre_id"], name: "index_postulers_on_offre_id"
    t.index ["user_id"], name: "index_postulers_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "facebook_id"
    t.string "google_id"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.date "dateNaissance"
    t.string "sexe"
    t.string "status"
    t.integer "phone"
    t.string "categorie"
    t.boolean "etat"
    t.string "domaine"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cursus", "users"
  add_foreign_key "domaines", "users"
  add_foreign_key "experiences", "users"
  add_foreign_key "langues", "users"
  add_foreign_key "offres", "domaines"
  add_foreign_key "offres", "users"
  add_foreign_key "postulers", "offres"
  add_foreign_key "postulers", "users"
end
