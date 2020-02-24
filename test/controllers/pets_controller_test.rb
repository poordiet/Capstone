require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post pets_url, params: { pet: { customer_id: @pet.customer_id, pet_allergies: @pet.pet_allergies, pet_birthdate: @pet.pet_birthdate, pet_color: @pet.pet_color, pet_gender: @pet.pet_gender, pet_medical_issues: @pet.pet_medical_issues, pet_notes: @pet.pet_notes, pet_treat: @pet.pet_treat, pet_weight: @pet.pet_weight, spayed_neutered: @pet.spayed_neutered, vet_name: @pet.vet_name, vet_phone: @pet.vet_phone } }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { customer_id: @pet.customer_id, pet_allergies: @pet.pet_allergies, pet_birthdate: @pet.pet_birthdate, pet_color: @pet.pet_color, pet_gender: @pet.pet_gender, pet_medical_issues: @pet.pet_medical_issues, pet_notes: @pet.pet_notes, pet_treat: @pet.pet_treat, pet_weight: @pet.pet_weight, spayed_neutered: @pet.spayed_neutered, vet_name: @pet.vet_name, vet_phone: @pet.vet_phone } }
    assert_redirected_to pet_url(@pet)
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
