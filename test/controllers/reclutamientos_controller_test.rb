require "test_helper"

class ReclutamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reclutamiento = reclutamientos(:one)
  end

  test "should get index" do
    get reclutamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_reclutamiento_url
    assert_response :success
  end

  test "should create reclutamiento" do
    assert_difference('Reclutamiento.count') do
      post reclutamientos_url, params: { reclutamiento: { birthdate: @reclutamiento.birthdate, discordId: @reclutamiento.discordId, email: @reclutamiento.email, first_name: @reclutamiento.first_name, image: @reclutamiento.image, ingreso: @reclutamiento.ingreso, last_name: @reclutamiento.last_name, nacionalidad: @reclutamiento.nacionalidad, notas: @reclutamiento.notas, phone_number: @reclutamiento.phone_number, status: @reclutamiento.status } }
    end

    assert_redirected_to reclutamiento_url(Reclutamiento.last)
  end

  test "should show reclutamiento" do
    get reclutamiento_url(@reclutamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_reclutamiento_url(@reclutamiento)
    assert_response :success
  end

  test "should update reclutamiento" do
    patch reclutamiento_url(@reclutamiento), params: { reclutamiento: { birthdate: @reclutamiento.birthdate, discordId: @reclutamiento.discordId, email: @reclutamiento.email, first_name: @reclutamiento.first_name, image: @reclutamiento.image, ingreso: @reclutamiento.ingreso, last_name: @reclutamiento.last_name, nacionalidad: @reclutamiento.nacionalidad, notas: @reclutamiento.notas, phone_number: @reclutamiento.phone_number, status: @reclutamiento.status } }
    assert_redirected_to reclutamiento_url(@reclutamiento)
  end

  test "should destroy reclutamiento" do
    assert_difference('Reclutamiento.count', -1) do
      delete reclutamiento_url(@reclutamiento)
    end

    assert_redirected_to reclutamientos_url
  end
end
