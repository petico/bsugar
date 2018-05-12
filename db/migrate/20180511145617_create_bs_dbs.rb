###############################################
# データベース
# created_at 2018.05.11 Petico
###############################################
class CreateBsDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_dbs, comment: "データベース" do |t|
      t.string :name      , null: false , limit: 50       , comment: "データベース名"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.boolean :is_sys   , null: false , default: false  , comment: "システム"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
