require 'test_helper'

class BsTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_table = bs_tables(:one)
  end

  test "should get index" do
    get bs_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_table_url
    assert_response :success
  end

  test "should create bs_table" do
    assert_difference('BsTable.count') do
      post bs_tables_url, params: { bs_table: { bs_db_id: @bs_table.bs_db_id, bs_system_id: @bs_table.bs_system_id, delflag: @bs_table.delflag, logical: @bs_table.logical, physical: @bs_table.physical, remark: @bs_table.remark } }
    end

    assert_redirected_to bs_table_url(BsTable.last)
  end

  test "should show bs_table" do
    get bs_table_url(@bs_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_table_url(@bs_table)
    assert_response :success
  end

  test "should update bs_table" do
    patch bs_table_url(@bs_table), params: { bs_table: { bs_db_id: @bs_table.bs_db_id, bs_system_id: @bs_table.bs_system_id, delflag: @bs_table.delflag, logical: @bs_table.logical, physical: @bs_table.physical, remark: @bs_table.remark } }
    assert_redirected_to bs_table_url(@bs_table)
  end

  test "should destroy bs_table" do
    assert_difference('BsTable.count', -1) do
      delete bs_table_url(@bs_table)
    end

    assert_redirected_to bs_tables_url
  end
end
