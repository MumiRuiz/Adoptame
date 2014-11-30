class AdoptionFormsController < ApplicationController
  before_action :set_adoption_form, only: [:show, :edit, :update, :destroy]

  def index
    @adoption_forms = AdoptionForm.all
   
  end

  def show
    respond_with(@adoption_form)
  end

  def new
    @adoption_form = AdoptionForm.new
    
  end

  def edit
  end

  def create
    @adoption_form = AdoptionForm.new(adoption_form_params)
    @adoption_form.save
    respond_with(@adoption_form)
  end

  def update
    @adoption_form.update(adoption_form_params)
    respond_with(@adoption_form)
  end

  def destroy
    @adoption_form.destroy
    respond_with(@adoption_form)
  end

  private
    def set_adoption_form
      @adoption_form = AdoptionForm.find(params[:id])
    end

    def adoption_form_params
      params.require(:adoption_form).permit(:name, :last_name, :address, :neighborhood, :region, :city, :phone, :mobile_phone, :email, :age, :ingresos_mensuales, :profesion, :tipo_de_vivienda, :tipo_de_propiedad_de_la_vivienda, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, :question_8, :question_9, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_18, :question_19, :question_20, :question_21, :question_22, :question_23, :question_24, :question_25, :question_26, :question_27, :question_28, :pets_id)
    end
end
