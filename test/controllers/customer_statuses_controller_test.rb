require 'test_helper'

class CustomerStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_status = customer_statuses(:one)
  end

  test "should get index" do
    get customer_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_status_url
    assert_response :success
  end

  test "should create customer_status" do
    assert_difference('CustomerStatus.count') do
      post customer_statuses_url, params: { customer_status: { definition: @customer_status.definition, status: @customer_status.status } }
    end

    assert_redirected_to customer_status_url(CustomerStatus.last)
  end

  test "should show customer_status" do
    get customer_status_url(@customer_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_status_url(@customer_status)
    assert_response :success
  end

  test "should update customer_status" do
    patch customer_status_url(@customer_status), params: { customer_status: { definition: @customer_status.definition, status: @customer_status.status } }
    assert_redirected_to customer_status_url(@customer_status)
  end

  test "should destroy customer_status" do
    assert_difference('CustomerStatus.count', -1) do
      delete customer_status_url(@customer_status)
    end

    assert_redirected_to customer_statuses_url
  end
end
