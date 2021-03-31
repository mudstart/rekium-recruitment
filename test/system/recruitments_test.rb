require "application_system_test_case"

class RecruitmentsTest < ApplicationSystemTestCase
  setup do
    @recruitment = recruitments(:one)
  end

  test "visiting the index" do
    visit recruitments_url
    assert_selector "h1", text: "Recruitments"
  end

  test "creating a Recruitment" do
    visit recruitments_url
    click_on "New Recruitment"

    fill_in "Alter1", with: @recruitment.alter1
    fill_in "Alter2", with: @recruitment.alter2
    fill_in "Alter3", with: @recruitment.alter3
    fill_in "Alter4", with: @recruitment.alter4
    fill_in "Alter5", with: @recruitment.alter5
    fill_in "Birthdate", with: @recruitment.birthdate
    fill_in "Country", with: @recruitment.country
    fill_in "Discordid", with: @recruitment.discordID
    fill_in "Email", with: @recruitment.email
    fill_in "First name", with: @recruitment.first_name
    fill_in "Image", with: @recruitment.image
    fill_in "Ingreso", with: @recruitment.ingreso
    fill_in "Last name", with: @recruitment.last_name
    fill_in "Note", with: @recruitment.note
    fill_in "Phone number", with: @recruitment.phone_number
    fill_in "Status", with: @recruitment.status
    click_on "Create Recruitment"

    assert_text "Recruitment was successfully created"
    click_on "Back"
  end

  test "updating a Recruitment" do
    visit recruitments_url
    click_on "Edit", match: :first

    fill_in "Alter1", with: @recruitment.alter1
    fill_in "Alter2", with: @recruitment.alter2
    fill_in "Alter3", with: @recruitment.alter3
    fill_in "Alter4", with: @recruitment.alter4
    fill_in "Alter5", with: @recruitment.alter5
    fill_in "Birthdate", with: @recruitment.birthdate
    fill_in "Country", with: @recruitment.country
    fill_in "Discordid", with: @recruitment.discordID
    fill_in "Email", with: @recruitment.email
    fill_in "First name", with: @recruitment.first_name
    fill_in "Image", with: @recruitment.image
    fill_in "Ingreso", with: @recruitment.ingreso
    fill_in "Last name", with: @recruitment.last_name
    fill_in "Note", with: @recruitment.note
    fill_in "Phone number", with: @recruitment.phone_number
    fill_in "Status", with: @recruitment.status
    click_on "Update Recruitment"

    assert_text "Recruitment was successfully updated"
    click_on "Back"
  end

  test "destroying a Recruitment" do
    visit recruitments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recruitment was successfully destroyed"
  end
end
