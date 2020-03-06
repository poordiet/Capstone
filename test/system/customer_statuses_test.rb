require "application_system_test_case"

class CustomerStatusesTest < ApplicationSystemTestCase
  setup do
    @customer_status = customer_statuses(:one)
  end

  test "visiting the index" do
    visit customer_statuses_url
    assert_selector "h1", text: "Customer Statuses"
  end

  test "creating a Customer status" do
    visit customer_statuses_url
    click_on "New Customer Status"

    fill_in "Definition", with: @customer_status.definition
    fill_in "Status", with: @customer_status.status
    click_on "Create Customer status"

    assert_text "Customer status was successfully created"
    click_on "Back"
  end

  test "updating a Customer status" do
    visit customer_statuses_url
    click_on "Edit", match: :first

    fill_in "Definition", with: @customer_status.definition
    fill_in "Status", with: @customer_status.status
    click_on "Update Customer status"

    assert_text "Customer status was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer status" do
    visit customer_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer status was successfully destroyed"
  end
end
