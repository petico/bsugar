require 'test_helper'

class BsProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_project = bs_projects(:one)
  end

  test "should get index" do
    get bs_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_project_url
    assert_response :success
  end

  test "should create bs_project" do
    assert_difference('BsProject.count') do
      post bs_projects_url, params: { bs_project: { delflag: @bs_project.delflag, name: @bs_project.name, description: @bs_project.description } }
    end

    assert_redirected_to bs_project_url(BsProject.last)
  end

  test "should show bs_project" do
    get bs_project_url(@bs_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_project_url(@bs_project)
    assert_response :success
  end

  test "should update bs_project" do
    patch bs_project_url(@bs_project), params: { bs_project: { delflag: @bs_project.delflag, name: @bs_project.name, description: @bs_project.description } }
    assert_redirected_to bs_project_url(@bs_project)
  end

  test "should destroy bs_project" do
    assert_difference('BsProject.count', -1) do
      delete bs_project_url(@bs_project)
    end

    assert_redirected_to bs_projects_url
  end
end
