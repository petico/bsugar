###############################################
# データ型
# created_at 2018.05.11 Petico
###############################################
class CreateBsTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_types, comment: "データ型" do |t|
      t.integer :bs_db_id                                 , comment: "データベースID"
      t.string :name      , null: false , limit: 50       , comment: "正式名称"
      t.string :short_name, null: false , limit: 50       , comment: "簡易名称"
      t.boolean :is_scale , null: false , defalut: false  , comment: "スケール型"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
