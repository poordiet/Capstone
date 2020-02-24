require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "creating a Pet" do
    visit pets_url
    click_on "New Pet"

    fill_in "Customer", with: @pet.customer_id
    fill_in "Pet allergies", with: @pet.pet_allergies
    fill_in "Pet birthdate", with: @pet.pet_birthdate
    fill_in "Pet color", with: @pet.pet_color
    fill_in "Pet gender", with: @pet.pet_gender
    fill_in "Pet medical issues", with: @pet.pet_medical_issues
    fill_in "Pet notes", with: @pet.pet_notes
    fill_in "Pet treat", with: @pet.pet_treat
    fill_in "Pet weight", with: @pet.pet_weight
    fill_in "Spayed neutered", with: @pet.spayed_neutered
    fill_in "Vet name", with: @pet.vet_name
    fill_in "Vet phone", with: @pet.vet_phone
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "updating a Pet" do
    visit pets_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @pet.customer_id
    fill_in "Pet allergies", with: @pet.pet_allergies
    fill_in "Pet birthdate", with: @pet.pet_birthdate
    fill_in "Pet color", with: @pet.pet_color
    fill_in "Pet gender", with: @pet.pet_gender
    fill_in "Pet medical issues", with: @pet.pet_medical_issues
    fill_in "Pet notes", with: @pet.pet_notes
    fill_in "Pet treat", with: @pet.pet_treat
    fill_in "Pet weight", with: @pet.pet_weight
    fill_in "Spayed neutered", with: @pet.spayed_neutered
    fill_in "Vet name", with: @pet.vet_name
    fill_in "Vet phone", with: @pet.vet_phone
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet" do
    visit pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet was successfully destroyed"
  end
end
