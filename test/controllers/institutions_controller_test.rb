require 'test_helper'

class InstitutionsControllerTest < ActionController::TestCase
  setup do
    @institution = institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutions)
  end

  #Si no esta logeado debe ser direccionado a la pagina de autenticacion
  test "should be redirected to logging page when trying to get new page and is not logged in" do
    get :new

    assert_response :redirect
    assert_redirected_to new_user_path
  end

=begin

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should create institution" do
    assert_difference('Institution.count') do
      post :create, institution: { address: @institution.address, city: @institution.city, country: @institution.country, description: @institution.description, email: @institution.email, manager: @institution.manager, name: @institution.name, password: @institution.password, state: @institution.state, username: @institution.username, website: @institution.website }
    end

    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should show institution" do
    get :show, id: @institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution
    assert_response :success
  end

  test "should update institution" do
    patch :update, id: @institution, institution: { address: @institution.address, city: @institution.city, country: @institution.country, description: @institution.description, email: @institution.email, manager: @institution.manager, name: @institution.name, password: @institution.password, state: @institution.state, username: @institution.username, website: @institution.website }
    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should destroy institution" do
    assert_difference('Institution.count', -1) do
      delete :destroy, id: @institution
    end

    assert_redirected_to institutions_path
  end
=end

end
