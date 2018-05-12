###############################################
# テーブル
# created_at 2018.05.11 Petico
###############################################
class CreateBsTables < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_tables, comment: "テーブル" do |t|
      t.integer :bs_system_id                             , comment: "システムID"
      t.string :logical   , null: false , limit: 50       , comment: "論理名"
      t.string :physical  , null: false , limit: 50       , comment: "物理名"
      t.string :remark                  , limit: 100      , comment: "備考"
      t.integer :bs_db_id                                 , comment: "DB"
      t.string :db_name                                   , comment: "DB名"
      t.string :schema                                    , comment: "スキーマ名"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
