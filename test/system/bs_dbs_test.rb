require "application_system_test_case"

class BsDbsTest < ApplicationSystemTestCase
  setup do
    @bs_db = bs_dbs(:one)
  end

  test "visiting the index" do
    visit bs_dbs_url
    assert_selector "h1", text: "Bs Dbs"
  end

  test "creating a Bs db" do
    visit bs_dbs_url
    click_on "New Bs Db"

    fill_in "Delflag", with: @bs_db.delflag
    fill_in "Name", with: @bs_db.name
    click_on "Create Bs db"

    assert_text "Bs db was successfully created"
    click_on "Back"
  end

  test "updating a Bs db" do
    visit bs_dbs_url
    click_on "Edit", match: :first

    fill_in "Delflag", with: @bs_db.delflag
    fill_in "Name", with: @bs_db.name
    click_on "Update Bs db"

    assert_text "Bs db was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs db" do
    visit bs_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs db was successfully destroyed"
  end
end
