require "application_system_test_case"

class DbConnectionsTest < ApplicationSystemTestCase
  setup do
    @db_connection = db_connections(:one)
  end

  test "visiting the index" do
    visit db_connections_url
    assert_selector "h1", text: "Db Connections"
  end

  test "creating a Db connection" do
    visit db_connections_url
    click_on "New Db Connection"

    fill_in "Bs Db", with: @db_connection.bs_db_id
    fill_in "Dbname", with: @db_connection.dbname
    fill_in "Host", with: @db_connection.host
    fill_in "Name", with: @db_connection.name
    fill_in "Port", with: @db_connection.port
    fill_in "Schema", with: @db_connection.schema
    click_on "Create Db connection"

    assert_text "Db connection was successfully created"
    click_on "Back"
  end

  test "updating a Db connection" do
    visit db_connections_url
    click_on "Edit", match: :first

    fill_in "Bs Db", with: @db_connection.bs_db_id
    fill_in "Dbname", with: @db_connection.dbname
    fill_in "Host", with: @db_connection.host
    fill_in "Name", with: @db_connection.name
    fill_in "Port", with: @db_connection.port
    fill_in "Schema", with: @db_connection.schema
    click_on "Update Db connection"

    assert_text "Db connection was successfully updated"
    click_on "Back"
  end

  test "destroying a Db connection" do
    visit db_connections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Db connection was successfully destroyed"
  end
end
