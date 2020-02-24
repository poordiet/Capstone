require 'test_helper'

class PhotoTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_type = photo_types(:one)
  end

  test "should get index" do
    get photo_types_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_type_url
    assert_response :success
  end

  test "should create photo_type" do
    assert_difference('PhotoType.count') do
      post photo_types_url, params: { photo_type: { photo_type: @photo_type.photo_type } }
    end

    assert_redirected_to photo_type_url(PhotoType.last)
  end

  test "should show photo_type" do
    get photo_type_url(@photo_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_type_url(@photo_type)
    assert_response :success
  end

  test "should update photo_type" do
    patch photo_type_url(@photo_type), params: { photo_type: { photo_type: @photo_type.photo_type } }
    assert_redirected_to photo_type_url(@photo_type)
  end

  test "should destroy photo_type" do
    assert_difference('PhotoType.count', -1) do
      delete photo_type_url(@photo_type)
    end

    assert_redirected_to photo_types_url
  end
end
