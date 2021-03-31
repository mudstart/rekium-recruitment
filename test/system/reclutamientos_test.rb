require "application_system_test_case"

class ReclutamientosTest < ApplicationSystemTestCase
  setup do
    @reclutamiento = reclutamientos(:one)
  end

  test "visiting the index" do
    visit reclutamientos_url
    assert_selector "h1", text: "Reclutamientos"
  end

  test "creating a Reclutamiento" do
    visit reclutamientos_url
    click_on "New Reclutamiento"

    fill_in "Birthdate", with: @reclutamiento.birthdate
    fill_in "Discordid", with: @reclutamiento.discordId
    fill_in "Email", with: @reclutamiento.email
    fill_in "First name", with: @reclutamiento.first_name
    fill_in "Image", with: @reclutamiento.image
    fill_in "Ingreso", with: @reclutamiento.ingreso
    fill_in "Last name", with: @reclutamiento.last_name
    fill_in "Nacionalidad", with: @reclutamiento.nacionalidad
    fill_in "Notas", with: @reclutamiento.notas
    fill_in "Phone number", with: @reclutamiento.phone_number
    fill_in "Status", with: @reclutamiento.status
    click_on "Create Reclutamiento"

    assert_text "Reclutamiento was successfully created"
    click_on "Back"
  end

  test "updating a Reclutamiento" do
    visit reclutamientos_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @reclutamiento.birthdate
    fill_in "Discordid", with: @reclutamiento.discordId
    fill_in "Email", with: @reclutamiento.email
    fill_in "First name", with: @reclutamiento.first_name
    fill_in "Image", with: @reclutamiento.image
    fill_in "Ingreso", with: @reclutamiento.ingreso
    fill_in "Last name", with: @reclutamiento.last_name
    fill_in "Nacionalidad", with: @reclutamiento.nacionalidad
    fill_in "Notas", with: @reclutamiento.notas
    fill_in "Phone number", with: @reclutamiento.phone_number
    fill_in "Status", with: @reclutamiento.status
    click_on "Update Reclutamiento"

    assert_text "Reclutamiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Reclutamiento" do
    visit reclutamientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reclutamiento was successfully destroyed"
  end
end
