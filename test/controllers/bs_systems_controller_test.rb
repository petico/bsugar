require 'test_helper'

class BsSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_system = bs_systems(:one)
  end

  test "should get index" do
    get bs_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_system_url
    assert_response :success
  end

  test "should create bs_system" do
    assert_difference('BsSystem.count') do
      post bs_systems_url, params: { bs_system: { delflag: @bs_system.delflag, description: @bs_system.description, name: @bs_system.name } }
    end

    assert_redirected_to bs_system_url(BsSystem.last)
  end

  test "should show bs_system" do
    get bs_system_url(@bs_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_system_url(@bs_system)
    assert_response :success
  end

  test "should update bs_system" do
    patch bs_system_url(@bs_system), params: { bs_system: { delflag: @bs_system.delflag, description: @bs_system.description, name: @bs_system.name } }
    assert_redirected_to bs_system_url(@bs_system)
  end

  test "should destroy bs_system" do
    assert_difference('BsSystem.count', -1) do
      delete bs_system_url(@bs_system)
    end

    assert_redirected_to bs_systems_url
  end
end
