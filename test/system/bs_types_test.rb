require "application_system_test_case"

class BsTypesTest < ApplicationSystemTestCase
  setup do
    @bs_type = bs_types(:one)
  end

  test "visiting the index" do
    visit bs_types_url
    assert_selector "h1", text: "Bs Types"
  end

  test "creating a Bs type" do
    visit bs_types_url
    click_on "New Bs Type"

    fill_in "Bs Db", with: @bs_type.bs_db_id
    fill_in "Delflag", with: @bs_type.delflag
    fill_in "Is Scale", with: @bs_type.is_scale
    fill_in "Name", with: @bs_type.name
    fill_in "Short Name", with: @bs_type.short_name
    click_on "Create Bs type"

    assert_text "Bs type was successfully created"
    click_on "Back"
  end

  test "updating a Bs type" do
    visit bs_types_url
    click_on "Edit", match: :first

    fill_in "Bs Db", with: @bs_type.bs_db_id
    fill_in "Delflag", with: @bs_type.delflag
    fill_in "Is Scale", with: @bs_type.is_scale
    fill_in "Name", with: @bs_type.name
    fill_in "Short Name", with: @bs_type.short_name
    click_on "Update Bs type"

    assert_text "Bs type was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs type" do
    visit bs_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs type was successfully destroyed"
  end
end
