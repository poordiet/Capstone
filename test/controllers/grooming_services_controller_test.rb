require 'test_helper'

class GroomingServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grooming_service = grooming_services(:one)
  end

  test "should get index" do
    get grooming_services_url
    assert_response :success
  end

  test "should get new" do
    get new_grooming_service_url
    assert_response :success
  end

  test "should create grooming_service" do
    assert_difference('GroomingService.count') do
      post grooming_services_url, params: { grooming_service: { employee_id: @grooming_service.employee_id, grooming_appointment_id: @grooming_service.grooming_appointment_id, service_amount: @grooming_service.service_amount, service_amount_notes: @grooming_service.service_amount_notes, service_id: @grooming_service.service_id } }
    end

    assert_redirected_to grooming_service_url(GroomingService.last)
  end

  test "should show grooming_service" do
    get grooming_service_url(@grooming_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_grooming_service_url(@grooming_service)
    assert_response :success
  end

  test "should update grooming_service" do
    patch grooming_service_url(@grooming_service), params: { grooming_service: { employee_id: @grooming_service.employee_id, grooming_appointment_id: @grooming_service.grooming_appointment_id, service_amount: @grooming_service.service_amount, service_amount_notes: @grooming_service.service_amount_notes, service_id: @grooming_service.service_id } }
    assert_redirected_to grooming_service_url(@grooming_service)
  end

  test "should destroy grooming_service" do
    assert_difference('GroomingService.count', -1) do
      delete grooming_service_url(@grooming_service)
    end

    assert_redirected_to grooming_services_url
  end
end
