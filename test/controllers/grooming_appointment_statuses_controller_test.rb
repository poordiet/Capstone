require 'test_helper'

class GroomingAppointmentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grooming_appointment_status = grooming_appointment_statuses(:one)
  end

  test "should get index" do
    get grooming_appointment_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_grooming_appointment_status_url
    assert_response :success
  end

  test "should create grooming_appointment_status" do
    assert_difference('GroomingAppointmentStatus.count') do
      post grooming_appointment_statuses_url, params: { grooming_appointment_status: { description: @grooming_appointment_status.description, status: @grooming_appointment_status.status } }
    end

    assert_redirected_to grooming_appointment_status_url(GroomingAppointmentStatus.last)
  end

  test "should show grooming_appointment_status" do
    get grooming_appointment_status_url(@grooming_appointment_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_grooming_appointment_status_url(@grooming_appointment_status)
    assert_response :success
  end

  test "should update grooming_appointment_status" do
    patch grooming_appointment_status_url(@grooming_appointment_status), params: { grooming_appointment_status: { description: @grooming_appointment_status.description, status: @grooming_appointment_status.status } }
    assert_redirected_to grooming_appointment_status_url(@grooming_appointment_status)
  end

  test "should destroy grooming_appointment_status" do
    assert_difference('GroomingAppointmentStatus.count', -1) do
      delete grooming_appointment_status_url(@grooming_appointment_status)
    end

    assert_redirected_to grooming_appointment_statuses_url
  end
end
