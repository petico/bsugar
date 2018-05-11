require "application_system_test_case"

class BsTablesTest < ApplicationSystemTestCase
  setup do
    @bs_table = bs_tables(:one)
  end

  test "visiting the index" do
    visit bs_tables_url
    assert_selector "h1", text: "Bs Tables"
  end

  test "creating a Bs table" do
    visit bs_tables_url
    click_on "New Bs Table"

    fill_in "Bs Db", with: @bs_table.bs_db_id
    fill_in "Bs System", with: @bs_table.bs_system_id
    fill_in "Delflag", with: @bs_table.delflag
    fill_in "Logical", with: @bs_table.logical
    fill_in "Physical", with: @bs_table.physical
    fill_in "Remark", with: @bs_table.remark
    click_on "Create Bs table"

    assert_text "Bs table was successfully created"
    click_on "Back"
  end

  test "updating a Bs table" do
    visit bs_tables_url
    click_on "Edit", match: :first

    fill_in "Bs Db", with: @bs_table.bs_db_id
    fill_in "Bs System", with: @bs_table.bs_system_id
    fill_in "Delflag", with: @bs_table.delflag
    fill_in "Logical", with: @bs_table.logical
    fill_in "Physical", with: @bs_table.physical
    fill_in "Remark", with: @bs_table.remark
    click_on "Update Bs table"

    assert_text "Bs table was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs table" do
    visit bs_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs table was successfully destroyed"
  end
end
