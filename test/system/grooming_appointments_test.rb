require "application_system_test_case"

class GroomingAppointmentsTest < ApplicationSystemTestCase
  setup do
    @grooming_appointment = grooming_appointments(:one)
  end

  test "visiting the index" do
    visit grooming_appointments_url
    assert_selector "h1", text: "Grooming Appointments"
  end

  test "creating a Grooming appointment" do
    visit grooming_appointments_url
    click_on "New Grooming Appointment"

    fill_in "Appt blades", with: @grooming_appointment.appt_blades
    fill_in "Appt date", with: @grooming_appointment.appt_date
    fill_in "Appt notes", with: @grooming_appointment.appt_notes
    fill_in "Appt total", with: @grooming_appointment.appt_total
    fill_in "Customer feedback", with: @grooming_appointment.customer_feedback
    fill_in "Payment type", with: @grooming_appointment.payment_type_id
    fill_in "Pet", with: @grooming_appointment.pet_id
    fill_in "Store", with: @grooming_appointment.store_id
    fill_in "Vac current", with: @grooming_appointment.vac_current
    fill_in "Vac current date", with: @grooming_appointment.vac_current_date
    click_on "Create Grooming appointment"

    assert_text "Grooming appointment was successfully created"
    click_on "Back"
  end

  test "updating a Grooming appointment" do
    visit grooming_appointments_url
    click_on "Edit", match: :first

    fill_in "Appt blades", with: @grooming_appointment.appt_blades
    fill_in "Appt date", with: @grooming_appointment.appt_date
    fill_in "Appt notes", with: @grooming_appointment.appt_notes
    fill_in "Appt total", with: @grooming_appointment.appt_total
    fill_in "Customer feedback", with: @grooming_appointment.customer_feedback
    fill_in "Payment type", with: @grooming_appointment.payment_type_id
    fill_in "Pet", with: @grooming_appointment.pet_id
    fill_in "Store", with: @grooming_appointment.store_id
    fill_in "Vac current", with: @grooming_appointment.vac_current
    fill_in "Vac current date", with: @grooming_appointment.vac_current_date
    click_on "Update Grooming appointment"

    assert_text "Grooming appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Grooming appointment" do
    visit grooming_appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grooming appointment was successfully destroyed"
  end
end
