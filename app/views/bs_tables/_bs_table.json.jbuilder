json.extract! bs_table, :id, :bs_system_id, :logical, :physical, :remark, :bs_db_id, :delflag, :created_at, :updated_at
json.url bs_table_url(bs_table, format: :json)
