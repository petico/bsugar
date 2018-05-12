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

ActiveRecord::Schema.define(version: 2018_05_11_145850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bs_columns", comment: "カラム", force: :cascade do |t|
    t.integer "bs_table_id", comment: "テーブルID"
    t.integer "rowno", null: false, comment: "行番号"
    t.string "logical", limit: 50, null: false, comment: "論理名"
    t.string "physical", limit: 50, null: false, comment: "物理名"
    t.boolean "pk", default: false, null: false, comment: "主キー"
    t.boolean "fk", default: false, null: false, comment: "外部キー"
    t.boolean "uq", default: false, null: false, comment: "ユニーク"
    t.boolean "nn", default: false, null: false, comment: "NotNULL"
    t.integer "bs_type_id", comment: "データ型"
    t.integer "precision", default: 0, null: false, comment: "精度"
    t.integer "scale", default: 0, null: false, comment: "スケール"
    t.string "df", limit: 50, comment: "初期値"
    t.string "remark", limit: 100, comment: "備考"
    t.string "ver", limit: 20, comment: "バージョン"
    t.integer "rev", default: 1, null: false, comment: "改訂"
    t.boolean "locked", default: false, null: false, comment: "編集ロック"
    t.boolean "allocate", default: false, null: false, comment: "割当フラグ"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "bs_dbs", comment: "データベース", force: :cascade do |t|
    t.string "name", limit: 50, null: false, comment: "データベース名"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.boolean "is_sys", default: false, null: false, comment: "システム"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "bs_projects", comment: "プロジェクト", force: :cascade do |t|
    t.string "name", limit: 50, null: false, comment: "プロジェクト名"
    t.string "description", limit: 200, comment: "説明"
    t.string "start_date", limit: 4, comment: "開始年月日"
    t.string "end_date", limit: 4, comment: "終了年月日"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "bs_systems", comment: "システム", force: :cascade do |t|
    t.integer "bs_project_id", comment: "プロジェクトID"
    t.string "name", limit: 50, null: false, comment: "システム名"
    t.string "description", limit: 200, comment: "説明"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "bs_tables", comment: "テーブル", force: :cascade do |t|
    t.integer "bs_system_id", comment: "システムID"
    t.string "logical", limit: 50, null: false, comment: "論理名"
    t.string "physical", limit: 50, null: false, comment: "物理名"
    t.string "remark", limit: 100, comment: "備考"
    t.integer "bs_db_id", comment: "DB"
    t.string "db_name", comment: "DB名"
    t.string "schema", comment: "スキーマ名"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

  create_table "bs_types", comment: "データ型", force: :cascade do |t|
    t.integer "bs_db_id", comment: "データベースID"
    t.string "name", limit: 50, null: false, comment: "正式名称"
    t.string "short_name", limit: 50, null: false, comment: "簡易名称"
    t.boolean "is_precision", null: false, comment: "精度入力"
    t.boolean "is_scale", null: false, comment: "スケール入力"
    t.boolean "delflag", default: false, null: false, comment: "削除フラグ"
    t.datetime "created_at", comment: "登録日"
    t.datetime "updated_at", comment: "更新日"
  end

end
