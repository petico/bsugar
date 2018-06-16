json.extract! db_connection, :id, :name, :bs_db_id, :host, :port, :schema, :dbname, :created_at, :updated_at
json.url db_connection_url(db_connection, format: :json)
