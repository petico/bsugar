class AddDbConnectionToBsSystem < ActiveRecord::Migration[5.2]
  def change
    add_column :bs_systems, :db_connection_id, :integer, comment: 'DBコネクションID'
  end
end
