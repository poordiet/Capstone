require "application_system_test_case"

class ServiceStatusesTest < ApplicationSystemTestCase
  setup do
    @service_status = service_statuses(:one)
  end

  test "visiting the index" do
    visit service_statuses_url
    assert_selector "h1", text: "Service Statuses"
  end

  test "creating a Service status" do
    visit service_statuses_url
    click_on "New Service Status"

    fill_in "Service status", with: @service_status.service_status
    click_on "Create Service status"

    assert_text "Service status was successfully created"
    click_on "Back"
  end

  test "updating a Service status" do
    visit service_statuses_url
    click_on "Edit", match: :first

    fill_in "Service status", with: @service_status.service_status
    click_on "Update Service status"

    assert_text "Service status was successfully updated"
    click_on "Back"
  end

  test "destroying a Service status" do
    visit service_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service status was successfully destroyed"
  end
end
