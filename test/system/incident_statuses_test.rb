require "application_system_test_case"

class IncidentStatusesTest < ApplicationSystemTestCase
  setup do
    @incident_status = incident_statuses(:one)
  end

  test "visiting the index" do
    visit incident_statuses_url
    assert_selector "h1", text: "Incident Statuses"
  end

  test "creating a Incident status" do
    visit incident_statuses_url
    click_on "New Incident Status"

    fill_in "Definition", with: @incident_status.definition
    fill_in "Status", with: @incident_status.status
    click_on "Create Incident status"

    assert_text "Incident status was successfully created"
    click_on "Back"
  end

  test "updating a Incident status" do
    visit incident_statuses_url
    click_on "Edit", match: :first

    fill_in "Definition", with: @incident_status.definition
    fill_in "Status", with: @incident_status.status
    click_on "Update Incident status"

    assert_text "Incident status was successfully updated"
    click_on "Back"
  end

  test "destroying a Incident status" do
    visit incident_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incident status was successfully destroyed"
  end
end
