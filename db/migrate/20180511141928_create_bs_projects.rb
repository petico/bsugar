###############################################
# プロジェクト
# created_at 2018.05.11 Petico
###############################################
class CreateBsProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :bs_projects, comment: "プロジェクト"  do |t|
      t.string :name      , null: false , limit: 50       , comment: "プロジェクト名"
      t.string :description             , limit: 200      , comment: "説明"
      t.string :start_date              , limit: 4        , comment: "開始年月日"
      t.string :end_date                , limit: 4        , comment: "終了年月日"
      t.boolean :delflag  , null: false , default: false  , comment: "削除フラグ"
      t.datetime :created_at                              , comment: "登録日"
      t.datetime :updated_at                              , comment: "更新日"
    end
  end
end
