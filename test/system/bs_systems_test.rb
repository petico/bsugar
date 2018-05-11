require "application_system_test_case"

class BsSystemsTest < ApplicationSystemTestCase
  setup do
    @bs_system = bs_systems(:one)
  end

  test "visiting the index" do
    visit bs_systems_url
    assert_selector "h1", text: "Bs Systems"
  end

  test "creating a Bs system" do
    visit bs_systems_url
    click_on "New Bs System"

    fill_in "Delflag", with: @bs_system.delflag
    fill_in "Description", with: @bs_system.description
    fill_in "Name", with: @bs_system.name
    click_on "Create Bs system"

    assert_text "Bs system was successfully created"
    click_on "Back"
  end

  test "updating a Bs system" do
    visit bs_systems_url
    click_on "Edit", match: :first

    fill_in "Delflag", with: @bs_system.delflag
    fill_in "Description", with: @bs_system.description
    fill_in "Name", with: @bs_system.name
    click_on "Update Bs system"

    assert_text "Bs system was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs system" do
    visit bs_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs system was successfully destroyed"
  end
end
