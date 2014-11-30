require 'test_helper'

class AdoptionFormsControllerTest < ActionController::TestCase
  setup do
    @adoption_form = adoption_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adoption_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adoption_form" do
    assert_difference('AdoptionForm.count') do
      post :create, adoption_form: { address: @adoption_form.address, age: @adoption_form.age, city: @adoption_form.city, email: @adoption_form.email, ingresos_mensuales: @adoption_form.ingresos_mensuales, last_name: @adoption_form.last_name, mobile_phone: @adoption_form.mobile_phone, name: @adoption_form.name, neighborhood: @adoption_form.neighborhood, pets_id: @adoption_form.pets_id, phone: @adoption_form.phone, profesion: @adoption_form.profesion, question_10: @adoption_form.question_10, question_11: @adoption_form.question_11, question_12: @adoption_form.question_12, question_13: @adoption_form.question_13, question_14: @adoption_form.question_14, question_15: @adoption_form.question_15, question_16: @adoption_form.question_16, question_17: @adoption_form.question_17, question_18: @adoption_form.question_18, question_19: @adoption_form.question_19, question_1: @adoption_form.question_1, question_20: @adoption_form.question_20, question_21: @adoption_form.question_21, question_22: @adoption_form.question_22, question_23: @adoption_form.question_23, question_24: @adoption_form.question_24, question_25: @adoption_form.question_25, question_26: @adoption_form.question_26, question_27: @adoption_form.question_27, question_28: @adoption_form.question_28, question_2: @adoption_form.question_2, question_3: @adoption_form.question_3, question_4: @adoption_form.question_4, question_5: @adoption_form.question_5, question_6: @adoption_form.question_6, question_7: @adoption_form.question_7, question_8: @adoption_form.question_8, question_9: @adoption_form.question_9, region: @adoption_form.region, tipo_de_propiedad_de_la_vivienda: @adoption_form.tipo_de_propiedad_de_la_vivienda, tipo_de_vivienda: @adoption_form.tipo_de_vivienda }
    end

    assert_redirected_to adoption_form_path(assigns(:adoption_form))
  end

  test "should show adoption_form" do
    get :show, id: @adoption_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adoption_form
    assert_response :success
  end

  test "should update adoption_form" do
    patch :update, id: @adoption_form, adoption_form: { address: @adoption_form.address, age: @adoption_form.age, city: @adoption_form.city, email: @adoption_form.email, ingresos_mensuales: @adoption_form.ingresos_mensuales, last_name: @adoption_form.last_name, mobile_phone: @adoption_form.mobile_phone, name: @adoption_form.name, neighborhood: @adoption_form.neighborhood, pets_id: @adoption_form.pets_id, phone: @adoption_form.phone, profesion: @adoption_form.profesion, question_10: @adoption_form.question_10, question_11: @adoption_form.question_11, question_12: @adoption_form.question_12, question_13: @adoption_form.question_13, question_14: @adoption_form.question_14, question_15: @adoption_form.question_15, question_16: @adoption_form.question_16, question_17: @adoption_form.question_17, question_18: @adoption_form.question_18, question_19: @adoption_form.question_19, question_1: @adoption_form.question_1, question_20: @adoption_form.question_20, question_21: @adoption_form.question_21, question_22: @adoption_form.question_22, question_23: @adoption_form.question_23, question_24: @adoption_form.question_24, question_25: @adoption_form.question_25, question_26: @adoption_form.question_26, question_27: @adoption_form.question_27, question_28: @adoption_form.question_28, question_2: @adoption_form.question_2, question_3: @adoption_form.question_3, question_4: @adoption_form.question_4, question_5: @adoption_form.question_5, question_6: @adoption_form.question_6, question_7: @adoption_form.question_7, question_8: @adoption_form.question_8, question_9: @adoption_form.question_9, region: @adoption_form.region, tipo_de_propiedad_de_la_vivienda: @adoption_form.tipo_de_propiedad_de_la_vivienda, tipo_de_vivienda: @adoption_form.tipo_de_vivienda }
    assert_redirected_to adoption_form_path(assigns(:adoption_form))
  end

  test "should destroy adoption_form" do
    assert_difference('AdoptionForm.count', -1) do
      delete :destroy, id: @adoption_form
    end

    assert_redirected_to adoption_forms_path
  end
end
