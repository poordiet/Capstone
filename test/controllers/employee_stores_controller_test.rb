require 'test_helper'

class EmployeeStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_store = employee_stores(:one)
  end

  test "should get index" do
    get employee_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_store_url
    assert_response :success
  end

  test "should create employee_store" do
    assert_difference('EmployeeStore.count') do
      post employee_stores_url, params: { employee_store: { employee_id: @employee_store.employee_id, store_id: @employee_store.store_id } }
    end

    assert_redirected_to employee_store_url(EmployeeStore.last)
  end

  test "should show employee_store" do
    get employee_store_url(@employee_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_store_url(@employee_store)
    assert_response :success
  end

  test "should update employee_store" do
    patch employee_store_url(@employee_store), params: { employee_store: { employee_id: @employee_store.employee_id, store_id: @employee_store.store_id } }
    assert_redirected_to employee_store_url(@employee_store)
  end

  test "should destroy employee_store" do
    assert_difference('EmployeeStore.count', -1) do
      delete employee_store_url(@employee_store)
    end

    assert_redirected_to employee_stores_url
  end
end
