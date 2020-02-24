require "application_system_test_case"

class GroomingStylesTest < ApplicationSystemTestCase
  setup do
    @grooming_style = grooming_styles(:one)
  end

  test "visiting the index" do
    visit grooming_styles_url
    assert_selector "h1", text: "Grooming Styles"
  end

  test "creating a Grooming style" do
    visit grooming_styles_url
    click_on "New Grooming Style"

    fill_in "Groom style notes", with: @grooming_style.groom_style_notes
    fill_in "Grooming appointment", with: @grooming_style.grooming_appointment_id
    fill_in "Style", with: @grooming_style.style_id
    click_on "Create Grooming style"

    assert_text "Grooming style was successfully created"
    click_on "Back"
  end

  test "updating a Grooming style" do
    visit grooming_styles_url
    click_on "Edit", match: :first

    fill_in "Groom style notes", with: @grooming_style.groom_style_notes
    fill_in "Grooming appointment", with: @grooming_style.grooming_appointment_id
    fill_in "Style", with: @grooming_style.style_id
    click_on "Update Grooming style"

    assert_text "Grooming style was successfully updated"
    click_on "Back"
  end

  test "destroying a Grooming style" do
    visit grooming_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grooming style was successfully destroyed"
  end
end
