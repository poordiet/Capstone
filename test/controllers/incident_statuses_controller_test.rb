require 'test_helper'

class IncidentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident_status = incident_statuses(:one)
  end

  test "should get index" do
    get incident_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_incident_status_url
    assert_response :success
  end

  test "should create incident_status" do
    assert_difference('IncidentStatus.count') do
      post incident_statuses_url, params: { incident_status: { definition: @incident_status.definition, status: @incident_status.status } }
    end

    assert_redirected_to incident_status_url(IncidentStatus.last)
  end

  test "should show incident_status" do
    get incident_status_url(@incident_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_incident_status_url(@incident_status)
    assert_response :success
  end

  test "should update incident_status" do
    patch incident_status_url(@incident_status), params: { incident_status: { definition: @incident_status.definition, status: @incident_status.status } }
    assert_redirected_to incident_status_url(@incident_status)
  end

  test "should destroy incident_status" do
    assert_difference('IncidentStatus.count', -1) do
      delete incident_status_url(@incident_status)
    end

    assert_redirected_to incident_statuses_url
  end
end
