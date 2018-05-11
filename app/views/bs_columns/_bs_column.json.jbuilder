json.extract! bs_column, :id, :bs_table_id, :rowno, :logical, :physical, :pk, :fk, :uq, :nn, :bs_type_id, :precision, :scale, :df, :remark, :remark, :ver, :rev, :locked, :delflag, :created_at, :updated_at
json.url bs_column_url(bs_column, format: :json)
