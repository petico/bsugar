require "application_system_test_case"

class BsProjectsTest < ApplicationSystemTestCase
  setup do
    @bs_project = bs_projects(:one)
  end

  test "visiting the index" do
    visit bs_projects_url
    assert_selector "h1", text: "Bs Projects"
  end

  test "creating a Bs project" do
    visit bs_projects_url
    click_on "New Bs Project"

    fill_in "Delflag", with: @bs_project.delflag
    fill_in "Name", with: @bs_project.name
    fill_in "Remark", with: @bs_project.remark
    click_on "Create Bs project"

    assert_text "Bs project was successfully created"
    click_on "Back"
  end

  test "updating a Bs project" do
    visit bs_projects_url
    click_on "Edit", match: :first

    fill_in "Delflag", with: @bs_project.delflag
    fill_in "Name", with: @bs_project.name
    fill_in "Remark", with: @bs_project.remark
    click_on "Update Bs project"

    assert_text "Bs project was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs project" do
    visit bs_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs project was successfully destroyed"
  end
end
