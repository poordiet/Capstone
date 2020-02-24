require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { emp_address: @employee.emp_address, emp_city: @employee.emp_city, emp_email: @employee.emp_email, emp_first_name: @employee.emp_first_name, emp_hire_date: @employee.emp_hire_date, emp_last_name: @employee.emp_last_name, emp_primary_phone: @employee.emp_primary_phone, emp_secondary_phone: @employee.emp_secondary_phone, emp_zip: @employee.emp_zip, state_id: @employee.state_id } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { emp_address: @employee.emp_address, emp_city: @employee.emp_city, emp_email: @employee.emp_email, emp_first_name: @employee.emp_first_name, emp_hire_date: @employee.emp_hire_date, emp_last_name: @employee.emp_last_name, emp_primary_phone: @employee.emp_primary_phone, emp_secondary_phone: @employee.emp_secondary_phone, emp_zip: @employee.emp_zip, state_id: @employee.state_id } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
