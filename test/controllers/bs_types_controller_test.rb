require 'test_helper'

class BsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_type = bs_types(:one)
  end

  test "should get index" do
    get bs_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_type_url
    assert_response :success
  end

  test "should create bs_type" do
    assert_difference('BsType.count') do
      post bs_types_url, params: { bs_type: { bs_db_id: @bs_type.bs_db_id, delflag: @bs_type.delflag, is_scale: @bs_type.is_scale, name: @bs_type.name, short_name: @bs_type.short_name } }
    end

    assert_redirected_to bs_type_url(BsType.last)
  end

  test "should show bs_type" do
    get bs_type_url(@bs_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_type_url(@bs_type)
    assert_response :success
  end

  test "should update bs_type" do
    patch bs_type_url(@bs_type), params: { bs_type: { bs_db_id: @bs_type.bs_db_id, delflag: @bs_type.delflag, is_scale: @bs_type.is_scale, name: @bs_type.name, short_name: @bs_type.short_name } }
    assert_redirected_to bs_type_url(@bs_type)
  end

  test "should destroy bs_type" do
    assert_difference('BsType.count', -1) do
      delete bs_type_url(@bs_type)
    end

    assert_redirected_to bs_types_url
  end
end
