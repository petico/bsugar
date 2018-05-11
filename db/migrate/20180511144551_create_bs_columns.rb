###############################################
# カラム
# created_at 2018.05.11 Petico
###############################################
class CreateBsColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_columns, comment: "カラム" do |t|
      t.integer :bs_table_id                              , comment: "テーブルID"
      t.integer :rowno        , null: false               , comment: "行番号"
      t.string :logical   , null: false , limit: 50       , comment: "論理名"
      t.string :physical  , null: false , limit: 50       , comment: "物理名"
      t.boolean :pk       , null: false , default: false  , comment: "主キー"
      t.boolean :fk       , null: false , default: false  , comment: "外部キー"
      t.boolean :uq       , null: false , default: false  , comment: "ユニーク"
      t.boolean :nn       , null: false , default: false  , comment: "NotNULL"
      t.integer :bs_type_id                               , comment: "データ型"
      t.integer :precision , null: false , default: 0     , comment: "精度"
      t.integer :scale    , null: false , default: 0      , comment: "スケール"
      t.string :df                      , limit: 50       , comment: "初期値"
      t.string :remark                  , limit: 100      , comment: "備考"
      t.string :ver                     , limit: 20       , comment: "バージョン"
      t.integer :rev      , null: false , default: 1      , comment: "改訂"
      t.boolean :locked   , null: false , default: false  , comment: "編集ロック"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
