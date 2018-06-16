###############################################
# データベース接続
# created_at 2018.05.17 Petico
###############################################
class CreateDbConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :db_connections, comment: "データベース接続" do |t|
      t.string :name            , comment: "データベース接続名"
      t.integer :bs_db_id       , comment: "データベースID"
      t.string :host            , comment: "ホスト名"
      t.string :port            , comment: "ポート"
      t.string :username        , comment: "ユーザ名"
      t.string :password        , comment: "パスワード"
      t.string :schema          , comment: "スキーマ名"
      t.string :dbname          , comment: "データベース名"

      t.timestamps
    end
  end
end
