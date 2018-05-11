require 'test_helper'

class BsColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_column = bs_columns(:one)
  end

  test "should get index" do
    get bs_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_column_url
    assert_response :success
  end

  test "should create bs_column" do
    assert_difference('BsColumn.count') do
      post bs_columns_url, params: { bs_column: { bs_table_id: @bs_column.bs_table_id, bs_type_id: @bs_column.bs_type_id, delflag: @bs_column.delflag, df: @bs_column.df, fk: @bs_column.fk, locked: @bs_column.locked, logical: @bs_column.logical, nn: @bs_column.nn, physical: @bs_column.physical, pk: @bs_column.pk, precision: @bs_column.precision, remark: @bs_column.remark, rev: @bs_column.rev, rowno: @bs_column.rowno, scale: @bs_column.scale, uq: @bs_column.uq, ver: @bs_column.ver } }
    end

    assert_redirected_to bs_column_url(BsColumn.last)
  end

  test "should show bs_column" do
    get bs_column_url(@bs_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_column_url(@bs_column)
    assert_response :success
  end

  test "should update bs_column" do
    patch bs_column_url(@bs_column), params: { bs_column: { bs_table_id: @bs_column.bs_table_id, bs_type_id: @bs_column.bs_type_id, delflag: @bs_column.delflag, df: @bs_column.df, fk: @bs_column.fk, locked: @bs_column.locked, logical: @bs_column.logical, nn: @bs_column.nn, physical: @bs_column.physical, pk: @bs_column.pk, precision: @bs_column.precision, remark: @bs_column.remark, rev: @bs_column.rev, rowno: @bs_column.rowno, scale: @bs_column.scale, uq: @bs_column.uq, ver: @bs_column.ver } }
    assert_redirected_to bs_column_url(@bs_column)
  end

  test "should destroy bs_column" do
    assert_difference('BsColumn.count', -1) do
      delete bs_column_url(@bs_column)
    end

    assert_redirected_to bs_columns_url
  end
end
