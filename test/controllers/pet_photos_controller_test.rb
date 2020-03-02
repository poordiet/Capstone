require 'test_helper'

class PetPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_photo = pet_photos(:one)
  end

  test "should get index" do
    get pet_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_photo_url
    assert_response :success
  end

  test "should create pet_photo" do
    assert_difference('PetPhoto.count') do
      post pet_photos_url, params: { pet_photo: { grooming_appointment_id: @pet_photo.grooming_appointment_id, pet_id: @pet_photo.pet_id, photo_description: @pet_photo.photo_description, photo_link: @pet_photo.photo_link, photo_type_id: @pet_photo.photo_type_id } }
    end

    assert_redirected_to pet_photo_url(PetPhoto.last)
  end

  test "should show pet_photo" do
    get pet_photo_url(@pet_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_photo_url(@pet_photo)
    assert_response :success
  end

  test "should update pet_photo" do
    patch pet_photo_url(@pet_photo), params: { pet_photo: { grooming_appointment_id: @pet_photo.grooming_appointment_id, pet_id: @pet_photo.pet_id, photo_description: @pet_photo.photo_description, photo_link: @pet_photo.photo_link, photo_type_id: @pet_photo.photo_type_id } }
    assert_redirected_to pet_photo_url(@pet_photo)
  end

  test "should destroy pet_photo" do
    assert_difference('PetPhoto.count', -1) do
      delete pet_photo_url(@pet_photo)
    end

    assert_redirected_to pet_photos_url
  end
end
