require "application_system_test_case"

class EmployeeStoresTest < ApplicationSystemTestCase
  setup do
    @employee_store = employee_stores(:one)
  end

  test "visiting the index" do
    visit employee_stores_url
    assert_selector "h1", text: "Employee Stores"
  end

  test "creating a Employee store" do
    visit employee_stores_url
    click_on "New Employee Store"

    fill_in "Employee", with: @employee_store.employee_id
    fill_in "Store", with: @employee_store.store_id
    click_on "Create Employee store"

    assert_text "Employee store was successfully created"
    click_on "Back"
  end

  test "updating a Employee store" do
    visit employee_stores_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @employee_store.employee_id
    fill_in "Store", with: @employee_store.store_id
    click_on "Update Employee store"

    assert_text "Employee store was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee store" do
    visit employee_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee store was successfully destroyed"
  end
end
