require 'test_helper'

class ServiceStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_status = service_statuses(:one)
  end

  test "should get index" do
    get service_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_service_status_url
    assert_response :success
  end

  test "should create service_status" do
    assert_difference('ServiceStatus.count') do
      post service_statuses_url, params: { service_status: { service_status: @service_status.service_status } }
    end

    assert_redirected_to service_status_url(ServiceStatus.last)
  end

  test "should show service_status" do
    get service_status_url(@service_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_status_url(@service_status)
    assert_response :success
  end

  test "should update service_status" do
    patch service_status_url(@service_status), params: { service_status: { service_status: @service_status.service_status } }
    assert_redirected_to service_status_url(@service_status)
  end

  test "should destroy service_status" do
    assert_difference('ServiceStatus.count', -1) do
      delete service_status_url(@service_status)
    end

    assert_redirected_to service_statuses_url
  end
end
