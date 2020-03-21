require "application_system_test_case"

class EmployeeStatusesTest < ApplicationSystemTestCase
  setup do
    @employee_status = employee_statuses(:one)
  end

  test "visiting the index" do
    visit employee_statuses_url
    assert_selector "h1", text: "Employee Statuses"
  end

  test "creating a Employee status" do
    visit employee_statuses_url
    click_on "New Employee Status"

    fill_in "Definition", with: @employee_status.definition
    fill_in "Status", with: @employee_status.status
    click_on "Create Employee status"

    assert_text "Employee status was successfully created"
    click_on "Back"
  end

  test "updating a Employee status" do
    visit employee_statuses_url
    click_on "Edit", match: :first

    fill_in "Definition", with: @employee_status.definition
    fill_in "Status", with: @employee_status.status
    click_on "Update Employee status"

    assert_text "Employee status was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee status" do
    visit employee_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee status was successfully destroyed"
  end
end
