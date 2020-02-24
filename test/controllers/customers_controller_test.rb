require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { customer_address: @customer.customer_address, customer_city: @customer.customer_city, customer_email: @customer.customer_email, customer_first_name: @customer.customer_first_name, customer_last_name: @customer.customer_last_name, customer_notes: @customer.customer_notes, customer_primary_phone: @customer.customer_primary_phone, customer_secondary_phone: @customer.customer_secondary_phone, customer_zip: @customer.customer_zip, date_obtained: @customer.date_obtained, state_id: @customer.state_id } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { customer_address: @customer.customer_address, customer_city: @customer.customer_city, customer_email: @customer.customer_email, customer_first_name: @customer.customer_first_name, customer_last_name: @customer.customer_last_name, customer_notes: @customer.customer_notes, customer_primary_phone: @customer.customer_primary_phone, customer_secondary_phone: @customer.customer_secondary_phone, customer_zip: @customer.customer_zip, date_obtained: @customer.date_obtained, state_id: @customer.state_id } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
