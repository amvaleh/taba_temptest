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

ActiveRecord::Schema.define(version: 20160509175103) do

  create_table "bloom_colors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bloom_seasons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "plant_id",   limit: 4
    t.integer  "number",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bluetooth_devices", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "sampling_times", limit: 4,   default: 0
    t.string   "location",       limit: 255
    t.integer  "version",        limit: 4,   default: 1
    t.integer  "status",         limit: 4,   default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.text     "content",          limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",          limit: 4
  end

  create_table "data_logs", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "plant_id",      limit: 4
    t.float    "humidity_soil", limit: 24
    t.float    "humidity_air",  limit: 24
    t.float    "light",         limit: 24
    t.float    "temperature",   limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

# Could not dump table "epidemics" because of following StandardError
#   Unknown type 'json' for column 'avatars'

  create_table "fa_alphabets", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "followable_id",   limit: 4,                   null: false
    t.string   "followable_type", limit: 255,                 null: false
    t.integer  "follower_id",     limit: 4,                   null: false
    t.string   "follower_type",   limit: 255,                 null: false
    t.boolean  "blocked",         limit: 1,   default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "gardens", force: :cascade do |t|
    t.integer  "profile_id",  limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "location",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.string   "avatar",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "leaf_colors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "leaf_shapes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "nifty_attachments", force: :cascade do |t|
    t.integer  "parent_id",   limit: 4
    t.string   "parent_type", limit: 255
    t.string   "token",       limit: 255
    t.string   "digest",      limit: 255
    t.string   "role",        limit: 255
    t.string   "file_name",   limit: 255
    t.string   "file_type",   limit: 255
    t.binary   "data",        limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nifty_key_value_store", force: :cascade do |t|
    t.integer "parent_id",   limit: 4
    t.string  "parent_type", limit: 255
    t.string  "group",       limit: 255
    t.string  "name",        limit: 255
    t.string  "value",       limit: 255
  end

# Could not dump table "nutritions" because of following StandardError
#   Unknown type 'json' for column 'avatars'

  create_table "pests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "cause",      limit: 65535
    t.text     "treatment",  limit: 65535
    t.text     "avatars",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "physical_structures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "plant_epidemics", force: :cascade do |t|
    t.integer  "plant_id",    limit: 4
    t.integer  "epidemic_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "plant_nutritions", force: :cascade do |t|
    t.integer  "nutrition_id", limit: 4
    t.integer  "plant_id",     limit: 4
    t.string   "time_space",   limit: 255
    t.integer  "time",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "season_id",    limit: 4
  end

  create_table "plant_pests", force: :cascade do |t|
    t.integer  "plant_id",   limit: 4
    t.integer  "pest_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "plant_propagations", force: :cascade do |t|
    t.integer  "plant_id",       limit: 4
    t.integer  "propagation_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "plant_shapes", force: :cascade do |t|
    t.integer  "plant_id",              limit: 4
    t.integer  "leaf_shape_id",         limit: 4
    t.integer  "leaf_color_id",         limit: 4
    t.integer  "bloom_color_id",        limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "physical_structure_id", limit: 4
  end

  create_table "plant_soils", force: :cascade do |t|
    t.integer  "plant_id",   limit: 4
    t.integer  "soil_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "plant_soils", ["plant_id"], name: "index_plant_soils_on_plant_id", using: :btree
  add_index "plant_soils", ["soil_id"], name: "index_plant_soils_on_soil_id", using: :btree

  create_table "planter_galleries", force: :cascade do |t|
    t.integer  "planter_id", limit: 4
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

# Could not dump table "plants" because of following StandardError
#   Unknown type 'json' for column 'avatars'

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "plant_id",   limit: 4
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image",      limit: 255
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.string   "profile_photo", limit: 255
    t.string   "cover_photo",   limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "full_name",     limit: 255, default: ""
    t.integer  "gender",        limit: 4,   default: 0
    t.string   "mobile_number", limit: 255, default: "0"
    t.string   "slug",          limit: 255
  end

  add_index "profiles", ["slug"], name: "index_profiles_on_slug", unique: true, using: :btree

  create_table "propagations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "explain",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "number",     limit: 4
    t.date     "start"
    t.date     "end"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shoppe_countries", force: :cascade do |t|
    t.string  "name",      limit: 255
    t.string  "code2",     limit: 255
    t.string  "code3",     limit: 255
    t.string  "continent", limit: 255
    t.string  "tld",       limit: 255
    t.string  "currency",  limit: 255
    t.boolean "eu_member", limit: 1,   default: false
  end

  create_table "shoppe_delivery_service_prices", force: :cascade do |t|
    t.integer  "delivery_service_id", limit: 4
    t.string   "code",                limit: 255
    t.decimal  "price",                             precision: 8, scale: 2
    t.decimal  "cost_price",                        precision: 8, scale: 2
    t.integer  "tax_rate_id",         limit: 4
    t.decimal  "min_weight",                        precision: 8, scale: 2
    t.decimal  "max_weight",                        precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "country_ids",         limit: 65535
  end

  add_index "shoppe_delivery_service_prices", ["delivery_service_id"], name: "index_shoppe_delivery_service_prices_on_delivery_service_id", using: :btree
  add_index "shoppe_delivery_service_prices", ["max_weight"], name: "index_shoppe_delivery_service_prices_on_max_weight", using: :btree
  add_index "shoppe_delivery_service_prices", ["min_weight"], name: "index_shoppe_delivery_service_prices_on_min_weight", using: :btree
  add_index "shoppe_delivery_service_prices", ["price"], name: "index_shoppe_delivery_service_prices_on_price", using: :btree

  create_table "shoppe_delivery_services", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "code",         limit: 255
    t.boolean  "default",      limit: 1,   default: false
    t.boolean  "active",       limit: 1,   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "courier",      limit: 255
    t.string   "tracking_url", limit: 255
  end

  add_index "shoppe_delivery_services", ["active"], name: "index_shoppe_delivery_services_on_active", using: :btree

  create_table "shoppe_order_items", force: :cascade do |t|
    t.integer  "order_id",          limit: 4
    t.integer  "ordered_item_id",   limit: 4
    t.string   "ordered_item_type", limit: 255
    t.integer  "quantity",          limit: 4,                           default: 1
    t.decimal  "unit_price",                    precision: 8, scale: 2
    t.decimal  "unit_cost_price",               precision: 8, scale: 2
    t.decimal  "tax_amount",                    precision: 8, scale: 2
    t.decimal  "tax_rate",                      precision: 8, scale: 2
    t.decimal  "weight",                        precision: 8, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_order_items", ["order_id"], name: "index_shoppe_order_items_on_order_id", using: :btree
  add_index "shoppe_order_items", ["ordered_item_id", "ordered_item_type"], name: "index_shoppe_order_items_ordered_item", using: :btree

  create_table "shoppe_orders", force: :cascade do |t|
    t.string   "token",                     limit: 255
    t.string   "first_name",                limit: 255
    t.string   "last_name",                 limit: 255
    t.string   "company",                   limit: 255
    t.string   "billing_address1",          limit: 255
    t.string   "billing_address2",          limit: 255
    t.string   "billing_address3",          limit: 255
    t.string   "billing_address4",          limit: 255
    t.string   "billing_postcode",          limit: 255
    t.integer  "billing_country_id",        limit: 4
    t.string   "email_address",             limit: 255
    t.string   "phone_number",              limit: 255
    t.string   "status",                    limit: 255
    t.datetime "received_at"
    t.datetime "accepted_at"
    t.datetime "shipped_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "delivery_service_id",       limit: 4
    t.decimal  "delivery_price",                          precision: 8, scale: 2
    t.decimal  "delivery_cost_price",                     precision: 8, scale: 2
    t.decimal  "delivery_tax_rate",                       precision: 8, scale: 2
    t.decimal  "delivery_tax_amount",                     precision: 8, scale: 2
    t.integer  "accepted_by",               limit: 4
    t.integer  "shipped_by",                limit: 4
    t.string   "consignment_number",        limit: 255
    t.datetime "rejected_at"
    t.integer  "rejected_by",               limit: 4
    t.string   "ip_address",                limit: 255
    t.text     "notes",                     limit: 65535
    t.boolean  "separate_delivery_address", limit: 1,                             default: false
    t.string   "delivery_name",             limit: 255
    t.string   "delivery_address1",         limit: 255
    t.string   "delivery_address2",         limit: 255
    t.string   "delivery_address3",         limit: 255
    t.string   "delivery_address4",         limit: 255
    t.string   "delivery_postcode",         limit: 255
    t.integer  "delivery_country_id",       limit: 4
    t.decimal  "amount_paid",                             precision: 8, scale: 2, default: 0.0
    t.boolean  "exported",                  limit: 1,                             default: false
    t.string   "invoice_number",            limit: 255
  end

  add_index "shoppe_orders", ["delivery_service_id"], name: "index_shoppe_orders_on_delivery_service_id", using: :btree
  add_index "shoppe_orders", ["received_at"], name: "index_shoppe_orders_on_received_at", using: :btree
  add_index "shoppe_orders", ["token"], name: "index_shoppe_orders_on_token", using: :btree

  create_table "shoppe_payments", force: :cascade do |t|
    t.integer  "order_id",          limit: 4
    t.decimal  "amount",                        precision: 8, scale: 2, default: 0.0
    t.string   "reference",         limit: 255
    t.string   "method",            limit: 255
    t.boolean  "confirmed",         limit: 1,                           default: true
    t.boolean  "refundable",        limit: 1,                           default: false
    t.decimal  "amount_refunded",               precision: 8, scale: 2, default: 0.0
    t.integer  "parent_payment_id", limit: 4
    t.boolean  "exported",          limit: 1,                           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_payments", ["order_id"], name: "index_shoppe_payments_on_order_id", using: :btree
  add_index "shoppe_payments", ["parent_payment_id"], name: "index_shoppe_payments_on_parent_payment_id", using: :btree

  create_table "shoppe_product_attributes", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.string   "key",        limit: 255
    t.string   "value",      limit: 255
    t.integer  "position",   limit: 4,   default: 1
    t.boolean  "searchable", limit: 1,   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public",     limit: 1,   default: true
  end

  add_index "shoppe_product_attributes", ["key"], name: "index_shoppe_product_attributes_on_key", using: :btree
  add_index "shoppe_product_attributes", ["position"], name: "index_shoppe_product_attributes_on_position", using: :btree
  add_index "shoppe_product_attributes", ["product_id"], name: "index_shoppe_product_attributes_on_product_id", using: :btree

  create_table "shoppe_product_categories", force: :cascade do |t|
    t.string   "name",                         limit: 255
    t.string   "permalink",                    limit: 255
    t.text     "description",                  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id",                    limit: 4
    t.integer  "lft",                          limit: 4
    t.integer  "rgt",                          limit: 4
    t.integer  "depth",                        limit: 4
    t.string   "ancestral_permalink",          limit: 255
    t.boolean  "permalink_includes_ancestors", limit: 1,     default: false
  end

  add_index "shoppe_product_categories", ["lft"], name: "index_shoppe_product_categories_on_lft", using: :btree
  add_index "shoppe_product_categories", ["permalink"], name: "index_shoppe_product_categories_on_permalink", using: :btree
  add_index "shoppe_product_categories", ["rgt"], name: "index_shoppe_product_categories_on_rgt", using: :btree

  create_table "shoppe_product_categorizations", force: :cascade do |t|
    t.integer "product_id",          limit: 4, null: false
    t.integer "product_category_id", limit: 4, null: false
  end

  add_index "shoppe_product_categorizations", ["product_category_id"], name: "categorization_by_product_category_id", using: :btree
  add_index "shoppe_product_categorizations", ["product_id"], name: "categorization_by_product_id", using: :btree

  create_table "shoppe_products", force: :cascade do |t|
    t.integer  "parent_id",         limit: 4
    t.string   "name",              limit: 255
    t.string   "sku",               limit: 255
    t.string   "permalink",         limit: 255
    t.text     "description",       limit: 65535
    t.text     "short_description", limit: 65535
    t.boolean  "active",            limit: 1,                             default: true
    t.decimal  "weight",                          precision: 8, scale: 3, default: 0.0
    t.decimal  "price",                           precision: 8, scale: 2, default: 0.0
    t.decimal  "cost_price",                      precision: 8, scale: 2, default: 0.0
    t.integer  "tax_rate_id",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured",          limit: 1,                             default: false
    t.text     "in_the_box",        limit: 65535
    t.boolean  "stock_control",     limit: 1,                             default: true
    t.boolean  "default",           limit: 1,                             default: false
  end

  add_index "shoppe_products", ["parent_id"], name: "index_shoppe_products_on_parent_id", using: :btree
  add_index "shoppe_products", ["permalink"], name: "index_shoppe_products_on_permalink", using: :btree
  add_index "shoppe_products", ["sku"], name: "index_shoppe_products_on_sku", using: :btree

  create_table "shoppe_settings", force: :cascade do |t|
    t.string "key",        limit: 255
    t.string "value",      limit: 255
    t.string "value_type", limit: 255
  end

  add_index "shoppe_settings", ["key"], name: "index_shoppe_settings_on_key", using: :btree

  create_table "shoppe_stock_level_adjustments", force: :cascade do |t|
    t.integer  "item_id",     limit: 4
    t.string   "item_type",   limit: 255
    t.string   "description", limit: 255
    t.integer  "adjustment",  limit: 4,   default: 0
    t.string   "parent_type", limit: 255
    t.integer  "parent_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_stock_level_adjustments", ["item_id", "item_type"], name: "index_shoppe_stock_level_adjustments_items", using: :btree
  add_index "shoppe_stock_level_adjustments", ["parent_id", "parent_type"], name: "index_shoppe_stock_level_adjustments_parent", using: :btree

  create_table "shoppe_tax_rates", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.decimal  "rate",                       precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "country_ids",  limit: 65535
    t.string   "address_type", limit: 255
  end

  create_table "shoppe_users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email_address",   limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shoppe_users", ["email_address"], name: "index_shoppe_users_on_email_address", using: :btree

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

# Could not dump table "soils" because of following StandardError
#   Unknown type 'json' for column 'avatars'

  create_table "survey_ideas", force: :cascade do |t|
    t.string   "gender",       limit: 255
    t.integer  "age",          limit: 4
    t.integer  "idea1",        limit: 4
    t.integer  "idea2",        limit: 4
    t.integer  "idea3",        limit: 4
    t.integer  "idea4",        limit: 4
    t.integer  "idea5",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "phone_number", limit: 255
    t.string   "email",        limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "auth_token",             limit: 255, default: ""
    t.integer  "role",                   limit: 4,   default: 0
  end

  add_index "users", ["auth_token"], name: "index_users_on_auth_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id",   limit: 4
    t.string   "votable_type", limit: 255
    t.integer  "voter_id",     limit: 4
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag",    limit: 1
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

  create_table "waterings", force: :cascade do |t|
    t.integer  "plant_id",   limit: 4
    t.integer  "season_id",  limit: 4
    t.integer  "times",      limit: 4
    t.string   "time_space", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "plant_soils", "plants"
  add_foreign_key "plant_soils", "soils"
end
