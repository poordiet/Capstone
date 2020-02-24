require "application_system_test_case"

class PhotoTypesTest < ApplicationSystemTestCase
  setup do
    @photo_type = photo_types(:one)
  end

  test "visiting the index" do
    visit photo_types_url
    assert_selector "h1", text: "Photo Types"
  end

  test "creating a Photo type" do
    visit photo_types_url
    click_on "New Photo Type"

    fill_in "Photo type", with: @photo_type.photo_type
    click_on "Create Photo type"

    assert_text "Photo type was successfully created"
    click_on "Back"
  end

  test "updating a Photo type" do
    visit photo_types_url
    click_on "Edit", match: :first

    fill_in "Photo type", with: @photo_type.photo_type
    click_on "Update Photo type"

    assert_text "Photo type was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo type" do
    visit photo_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo type was successfully destroyed"
  end
end
