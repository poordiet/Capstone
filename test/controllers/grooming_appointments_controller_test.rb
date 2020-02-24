require 'test_helper'

class GroomingAppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grooming_appointment = grooming_appointments(:one)
  end

  test "should get index" do
    get grooming_appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_grooming_appointment_url
    assert_response :success
  end

  test "should create grooming_appointment" do
    assert_difference('GroomingAppointment.count') do
      post grooming_appointments_url, params: { grooming_appointment: { appt_blades: @grooming_appointment.appt_blades, appt_date: @grooming_appointment.appt_date, appt_notes: @grooming_appointment.appt_notes, appt_total: @grooming_appointment.appt_total, customer_feedback: @grooming_appointment.customer_feedback, payment_type_id: @grooming_appointment.payment_type_id, pet_id: @grooming_appointment.pet_id, store_id: @grooming_appointment.store_id, vac_current: @grooming_appointment.vac_current, vac_current_date: @grooming_appointment.vac_current_date } }
    end

    assert_redirected_to grooming_appointment_url(GroomingAppointment.last)
  end

  test "should show grooming_appointment" do
    get grooming_appointment_url(@grooming_appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_grooming_appointment_url(@grooming_appointment)
    assert_response :success
  end

  test "should update grooming_appointment" do
    patch grooming_appointment_url(@grooming_appointment), params: { grooming_appointment: { appt_blades: @grooming_appointment.appt_blades, appt_date: @grooming_appointment.appt_date, appt_notes: @grooming_appointment.appt_notes, appt_total: @grooming_appointment.appt_total, customer_feedback: @grooming_appointment.customer_feedback, payment_type_id: @grooming_appointment.payment_type_id, pet_id: @grooming_appointment.pet_id, store_id: @grooming_appointment.store_id, vac_current: @grooming_appointment.vac_current, vac_current_date: @grooming_appointment.vac_current_date } }
    assert_redirected_to grooming_appointment_url(@grooming_appointment)
  end

  test "should destroy grooming_appointment" do
    assert_difference('GroomingAppointment.count', -1) do
      delete grooming_appointment_url(@grooming_appointment)
    end

    assert_redirected_to grooming_appointments_url
  end
end
