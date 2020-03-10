require "application_system_test_case"

class PetStatusesTest < ApplicationSystemTestCase
  setup do
    @pet_status = pet_statuses(:one)
  end

  test "visiting the index" do
    visit pet_statuses_url
    assert_selector "h1", text: "Pet Statuses"
  end

  test "creating a Pet status" do
    visit pet_statuses_url
    click_on "New Pet Status"

    fill_in "Definition", with: @pet_status.definition
    fill_in "Status", with: @pet_status.status
    click_on "Create Pet status"

    assert_text "Pet status was successfully created"
    click_on "Back"
  end

  test "updating a Pet status" do
    visit pet_statuses_url
    click_on "Edit", match: :first

    fill_in "Definition", with: @pet_status.definition
    fill_in "Status", with: @pet_status.status
    click_on "Update Pet status"

    assert_text "Pet status was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet status" do
    visit pet_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet status was successfully destroyed"
  end
end
