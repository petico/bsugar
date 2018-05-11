require 'test_helper'

class BsDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_db = bs_dbs(:one)
  end

  test "should get index" do
    get bs_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_db_url
    assert_response :success
  end

  test "should create bs_db" do
    assert_difference('BsDb.count') do
      post bs_dbs_url, params: { bs_db: { delflag: @bs_db.delflag, name: @bs_db.name } }
    end

    assert_redirected_to bs_db_url(BsDb.last)
  end

  test "should show bs_db" do
    get bs_db_url(@bs_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_db_url(@bs_db)
    assert_response :success
  end

  test "should update bs_db" do
    patch bs_db_url(@bs_db), params: { bs_db: { delflag: @bs_db.delflag, name: @bs_db.name } }
    assert_redirected_to bs_db_url(@bs_db)
  end

  test "should destroy bs_db" do
    assert_difference('BsDb.count', -1) do
      delete bs_db_url(@bs_db)
    end

    assert_redirected_to bs_dbs_url
  end
end
