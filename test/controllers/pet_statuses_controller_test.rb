require 'test_helper'

class PetStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_status = pet_statuses(:one)
  end

  test "should get index" do
    get pet_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_status_url
    assert_response :success
  end

  test "should create pet_status" do
    assert_difference('PetStatus.count') do
      post pet_statuses_url, params: { pet_status: { definition: @pet_status.definition, status: @pet_status.status } }
    end

    assert_redirected_to pet_status_url(PetStatus.last)
  end

  test "should show pet_status" do
    get pet_status_url(@pet_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_status_url(@pet_status)
    assert_response :success
  end

  test "should update pet_status" do
    patch pet_status_url(@pet_status), params: { pet_status: { definition: @pet_status.definition, status: @pet_status.status } }
    assert_redirected_to pet_status_url(@pet_status)
  end

  test "should destroy pet_status" do
    assert_difference('PetStatus.count', -1) do
      delete pet_status_url(@pet_status)
    end

    assert_redirected_to pet_statuses_url
  end
end
