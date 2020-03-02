require 'test_helper'

class GroomingStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grooming_style = grooming_styles(:one)
  end

  test "should get index" do
    get grooming_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_grooming_style_url
    assert_response :success
  end

  test "should create grooming_style" do
    assert_difference('GroomingStyle.count') do
      post grooming_styles_url, params: { grooming_style: { groom_style_notes: @grooming_style.groom_style_notes, grooming_appointment_id: @grooming_style.grooming_appointment_id, style_id: @grooming_style.style_id } }
    end

    assert_redirected_to grooming_style_url(GroomingStyle.last)
  end

  test "should show grooming_style" do
    get grooming_style_url(@grooming_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_grooming_style_url(@grooming_style)
    assert_response :success
  end

  test "should update grooming_style" do
    patch grooming_style_url(@grooming_style), params: { grooming_style: { groom_style_notes: @grooming_style.groom_style_notes, grooming_appointment_id: @grooming_style.grooming_appointment_id, style_id: @grooming_style.style_id } }
    assert_redirected_to grooming_style_url(@grooming_style)
  end

  test "should destroy grooming_style" do
    assert_difference('GroomingStyle.count', -1) do
      delete grooming_style_url(@grooming_style)
    end

    assert_redirected_to grooming_styles_url
  end
end
