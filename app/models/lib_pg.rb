require 'pg'

class LibPg
  def self.table_list(db_connection)
    tables = []
    conn = PG::connect( host: db_connection.host,
      user: db_connection.username,
      password: db_connection.password,
      port: db_connection.port,
      dbname: db_connection.dbname)
    begin
      result = conn.exec("select relname as table_name from pg_stat_user_tables where schemaname = $1 order by table_name",[db_connection.schema])
      result.each do |tuple|
        tables << tuple['table_name'].to_s
      end
    rescue => exception
      p exception
    ensure
      conn.finish
    end
    return tables
  end
end
