require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Emp address", with: @employee.emp_address
    fill_in "Emp city", with: @employee.emp_city
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp first name", with: @employee.emp_first_name
    fill_in "Emp hire date", with: @employee.emp_hire_date
    fill_in "Emp last name", with: @employee.emp_last_name
    fill_in "Emp primary phone", with: @employee.emp_primary_phone
    fill_in "Emp secondary phone", with: @employee.emp_secondary_phone
    fill_in "Emp zip", with: @employee.emp_zip
    fill_in "State", with: @employee.state_id
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Emp address", with: @employee.emp_address
    fill_in "Emp city", with: @employee.emp_city
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp first name", with: @employee.emp_first_name
    fill_in "Emp hire date", with: @employee.emp_hire_date
    fill_in "Emp last name", with: @employee.emp_last_name
    fill_in "Emp primary phone", with: @employee.emp_primary_phone
    fill_in "Emp secondary phone", with: @employee.emp_secondary_phone
    fill_in "Emp zip", with: @employee.emp_zip
    fill_in "State", with: @employee.state_id
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
