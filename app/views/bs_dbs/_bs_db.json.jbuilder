json.extract! bs_db, :id, :name, :delflag, :created_at, :updated_at
json.url bs_db_url(bs_db, format: :json)
