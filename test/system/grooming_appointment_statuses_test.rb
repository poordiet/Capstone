require "application_system_test_case"

class GroomingAppointmentStatusesTest < ApplicationSystemTestCase
  setup do
    @grooming_appointment_status = grooming_appointment_statuses(:one)
  end

  test "visiting the index" do
    visit grooming_appointment_statuses_url
    assert_selector "h1", text: "Grooming Appointment Statuses"
  end

  test "creating a Grooming appointment status" do
    visit grooming_appointment_statuses_url
    click_on "New Grooming Appointment Status"

    fill_in "Description", with: @grooming_appointment_status.description
    fill_in "Status", with: @grooming_appointment_status.status
    click_on "Create Grooming appointment status"

    assert_text "Grooming appointment status was successfully created"
    click_on "Back"
  end

  test "updating a Grooming appointment status" do
    visit grooming_appointment_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @grooming_appointment_status.description
    fill_in "Status", with: @grooming_appointment_status.status
    click_on "Update Grooming appointment status"

    assert_text "Grooming appointment status was successfully updated"
    click_on "Back"
  end

  test "destroying a Grooming appointment status" do
    visit grooming_appointment_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grooming appointment status was successfully destroyed"
  end
end
