ActiveRecord::Schema.define(version: 20210219010907) do

  create_table "articles", force: :cascade do |t|
    t.strong "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "update_at"

end
