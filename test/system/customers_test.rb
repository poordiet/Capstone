require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer city", with: @customer.customer_city
    fill_in "Customer email", with: @customer.customer_email
    fill_in "Customer first name", with: @customer.customer_first_name
    fill_in "Customer last name", with: @customer.customer_last_name
    fill_in "Customer notes", with: @customer.customer_notes
    fill_in "Customer primary phone", with: @customer.customer_primary_phone
    fill_in "Customer secondary phone", with: @customer.customer_secondary_phone
    fill_in "Customer zip", with: @customer.customer_zip
    fill_in "Date obtained", with: @customer.date_obtained
    fill_in "State", with: @customer.state_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Customer address", with: @customer.customer_address
    fill_in "Customer city", with: @customer.customer_city
    fill_in "Customer email", with: @customer.customer_email
    fill_in "Customer first name", with: @customer.customer_first_name
    fill_in "Customer last name", with: @customer.customer_last_name
    fill_in "Customer notes", with: @customer.customer_notes
    fill_in "Customer primary phone", with: @customer.customer_primary_phone
    fill_in "Customer secondary phone", with: @customer.customer_secondary_phone
    fill_in "Customer zip", with: @customer.customer_zip
    fill_in "Date obtained", with: @customer.date_obtained
    fill_in "State", with: @customer.state_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
