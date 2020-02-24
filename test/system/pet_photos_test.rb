require "application_system_test_case"

class PetPhotosTest < ApplicationSystemTestCase
  setup do
    @pet_photo = pet_photos(:one)
  end

  test "visiting the index" do
    visit pet_photos_url
    assert_selector "h1", text: "Pet Photos"
  end

  test "creating a Pet photo" do
    visit pet_photos_url
    click_on "New Pet Photo"

    fill_in "Grooming appointment", with: @pet_photo.grooming_appointment_id
    fill_in "Pet", with: @pet_photo.pet_id
    fill_in "Photo description", with: @pet_photo.photo_description
    fill_in "Photo link", with: @pet_photo.photo_link
    fill_in "Photo type", with: @pet_photo.photo_type_id
    click_on "Create Pet photo"

    assert_text "Pet photo was successfully created"
    click_on "Back"
  end

  test "updating a Pet photo" do
    visit pet_photos_url
    click_on "Edit", match: :first

    fill_in "Grooming appointment", with: @pet_photo.grooming_appointment_id
    fill_in "Pet", with: @pet_photo.pet_id
    fill_in "Photo description", with: @pet_photo.photo_description
    fill_in "Photo link", with: @pet_photo.photo_link
    fill_in "Photo type", with: @pet_photo.photo_type_id
    click_on "Update Pet photo"

    assert_text "Pet photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet photo" do
    visit pet_photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet photo was successfully destroyed"
  end
end
