require 'test_helper'

class PetVaccinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_vaccination = pet_vaccinations(:one)
  end

  test "should get index" do
    get pet_vaccinations_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_vaccination_url
    assert_response :success
  end

  test "should create pet_vaccination" do
    assert_difference('PetVaccination.count') do
      post pet_vaccinations_url, params: { pet_vaccination: { date_expire: @pet_vaccination.date_expire, date_given: @pet_vaccination.date_given, pet_id: @pet_vaccination.pet_id, vaccine_id: @pet_vaccination.vaccine_id } }
    end

    assert_redirected_to pet_vaccination_url(PetVaccination.last)
  end

  test "should show pet_vaccination" do
    get pet_vaccination_url(@pet_vaccination)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_vaccination_url(@pet_vaccination)
    assert_response :success
  end

  test "should update pet_vaccination" do
    patch pet_vaccination_url(@pet_vaccination), params: { pet_vaccination: { date_expire: @pet_vaccination.date_expire, date_given: @pet_vaccination.date_given, pet_id: @pet_vaccination.pet_id, vaccine_id: @pet_vaccination.vaccine_id } }
    assert_redirected_to pet_vaccination_url(@pet_vaccination)
  end

  test "should destroy pet_vaccination" do
    assert_difference('PetVaccination.count', -1) do
      delete pet_vaccination_url(@pet_vaccination)
    end

    assert_redirected_to pet_vaccinations_url
  end
end
