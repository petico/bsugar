###############################################
# システム
# created_at 2018.05.11 Petico
###############################################
class CreateBsSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_systems, comment: "システム"  do |t|
      t.integer :bs_project_id                            , comment: "プロジェクトID"
      t.string :name      , null: false , limit: 50       , comment: "システム名"
      t.string :description             , limit: 200      , comment: "説明"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
