require "application_system_test_case"

class BsColumnsTest < ApplicationSystemTestCase
  setup do
    @bs_column = bs_columns(:one)
  end

  test "visiting the index" do
    visit bs_columns_url
    assert_selector "h1", text: "Bs Columns"
  end

  test "creating a Bs column" do
    visit bs_columns_url
    click_on "New Bs Column"

    fill_in "Bs Table", with: @bs_column.bs_table_id
    fill_in "Bs Type", with: @bs_column.bs_type_id
    fill_in "Delflag", with: @bs_column.delflag
    fill_in "Df", with: @bs_column.df
    fill_in "Fk", with: @bs_column.fk
    fill_in "Locked", with: @bs_column.locked
    fill_in "Logical", with: @bs_column.logical
    fill_in "Nn", with: @bs_column.nn
    fill_in "Physical", with: @bs_column.physical
    fill_in "Pk", with: @bs_column.pk
    fill_in "Precision", with: @bs_column.precision
    fill_in "Remark", with: @bs_column.remark
    fill_in "Rev", with: @bs_column.rev
    fill_in "Rowno", with: @bs_column.rowno
    fill_in "Scale", with: @bs_column.scale
    fill_in "Uq", with: @bs_column.uq
    fill_in "Ver", with: @bs_column.ver
    click_on "Create Bs column"

    assert_text "Bs column was successfully created"
    click_on "Back"
  end

  test "updating a Bs column" do
    visit bs_columns_url
    click_on "Edit", match: :first

    fill_in "Bs Table", with: @bs_column.bs_table_id
    fill_in "Bs Type", with: @bs_column.bs_type_id
    fill_in "Delflag", with: @bs_column.delflag
    fill_in "Df", with: @bs_column.df
    fill_in "Fk", with: @bs_column.fk
    fill_in "Locked", with: @bs_column.locked
    fill_in "Logical", with: @bs_column.logical
    fill_in "Nn", with: @bs_column.nn
    fill_in "Physical", with: @bs_column.physical
    fill_in "Pk", with: @bs_column.pk
    fill_in "Precision", with: @bs_column.precision
    fill_in "Remark", with: @bs_column.remark
    fill_in "Rev", with: @bs_column.rev
    fill_in "Rowno", with: @bs_column.rowno
    fill_in "Scale", with: @bs_column.scale
    fill_in "Uq", with: @bs_column.uq
    fill_in "Ver", with: @bs_column.ver
    click_on "Update Bs column"

    assert_text "Bs column was successfully updated"
    click_on "Back"
  end

  test "destroying a Bs column" do
    visit bs_columns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bs column was successfully destroyed"
  end
end
