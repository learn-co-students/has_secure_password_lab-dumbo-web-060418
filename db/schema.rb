
ActiveRecord::Schema.define(version: 20180708210553) do

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
