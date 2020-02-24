require "application_system_test_case"

class PetVaccinationsTest < ApplicationSystemTestCase
  setup do
    @pet_vaccination = pet_vaccinations(:one)
  end

  test "visiting the index" do
    visit pet_vaccinations_url
    assert_selector "h1", text: "Pet Vaccinations"
  end

  test "creating a Pet vaccination" do
    visit pet_vaccinations_url
    click_on "New Pet Vaccination"

    fill_in "Date expire", with: @pet_vaccination.date_expire
    fill_in "Date given", with: @pet_vaccination.date_given
    fill_in "Pet", with: @pet_vaccination.pet_id
    fill_in "Vaccine", with: @pet_vaccination.vaccine_id
    click_on "Create Pet vaccination"

    assert_text "Pet vaccination was successfully created"
    click_on "Back"
  end

  test "updating a Pet vaccination" do
    visit pet_vaccinations_url
    click_on "Edit", match: :first

    fill_in "Date expire", with: @pet_vaccination.date_expire
    fill_in "Date given", with: @pet_vaccination.date_given
    fill_in "Pet", with: @pet_vaccination.pet_id
    fill_in "Vaccine", with: @pet_vaccination.vaccine_id
    click_on "Update Pet vaccination"

    assert_text "Pet vaccination was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet vaccination" do
    visit pet_vaccinations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet vaccination was successfully destroyed"
  end
end
