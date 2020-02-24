require "application_system_test_case"

class GroomingServicesTest < ApplicationSystemTestCase
  setup do
    @grooming_service = grooming_services(:one)
  end

  test "visiting the index" do
    visit grooming_services_url
    assert_selector "h1", text: "Grooming Services"
  end

  test "creating a Grooming service" do
    visit grooming_services_url
    click_on "New Grooming Service"

    fill_in "Employee", with: @grooming_service.employee_id
    fill_in "Grooming appointment", with: @grooming_service.grooming_appointment_id
    fill_in "Service amount", with: @grooming_service.service_amount
    fill_in "Service amount notes", with: @grooming_service.service_amount_notes
    fill_in "Service", with: @grooming_service.service_id
    click_on "Create Grooming service"

    assert_text "Grooming service was successfully created"
    click_on "Back"
  end

  test "updating a Grooming service" do
    visit grooming_services_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @grooming_service.employee_id
    fill_in "Grooming appointment", with: @grooming_service.grooming_appointment_id
    fill_in "Service amount", with: @grooming_service.service_amount
    fill_in "Service amount notes", with: @grooming_service.service_amount_notes
    fill_in "Service", with: @grooming_service.service_id
    click_on "Update Grooming service"

    assert_text "Grooming service was successfully updated"
    click_on "Back"
  end

  test "destroying a Grooming service" do
    visit grooming_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grooming service was successfully destroyed"
  end
end
