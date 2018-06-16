require 'test_helper'

class DbConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @db_connection = db_connections(:one)
  end

  test "should get index" do
    get db_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_db_connection_url
    assert_response :success
  end

  test "should create db_connection" do
    assert_difference('DbConnection.count') do
      post db_connections_url, params: { db_connection: { bs_db_id: @db_connection.bs_db_id, dbname: @db_connection.dbname, host: @db_connection.host, name: @db_connection.name, port: @db_connection.port, schema: @db_connection.schema } }
    end

    assert_redirected_to db_connection_url(DbConnection.last)
  end

  test "should show db_connection" do
    get db_connection_url(@db_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_db_connection_url(@db_connection)
    assert_response :success
  end

  test "should update db_connection" do
    patch db_connection_url(@db_connection), params: { db_connection: { bs_db_id: @db_connection.bs_db_id, dbname: @db_connection.dbname, host: @db_connection.host, name: @db_connection.name, port: @db_connection.port, schema: @db_connection.schema } }
    assert_redirected_to db_connection_url(@db_connection)
  end

  test "should destroy db_connection" do
    assert_difference('DbConnection.count', -1) do
      delete db_connection_url(@db_connection)
    end

    assert_redirected_to db_connections_url
  end
end
