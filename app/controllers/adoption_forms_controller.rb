class AdoptionFormsController < ApplicationController
  before_action :set_adoption_form, only: [:show, :edit, :update, :destroy]
  before_action :set_pet

  def index
    @adoption_forms = AdoptionForm.all
  end

  def show
    @institution_info = @adoption_form.pet.institution
  end

  def new
    @adoption_form = @pet.adoption_forms.new
  end

  def edit
  end

  def create
    @adoption_form = @pet.adoption_forms.new(adoption_form_params)
    @adoption_form.pet_id = params[:pet_id]
    @adoption_form.save
    @institution_info = @adoption_form.pet.institution
    #Envia email una vez se guarda el formulario
    AdoptionMailer.adoption_email(@adoption_form).deliver
    AdoptionMailer.adoption_email(@institution_adoption_form).deliver
    redirect_to pet_adoption_form_path(@pet, @adoption_form), notice: "Adopcion creada"
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
    def set_pet
      @pet = Pet.find(params[:pet_id])
    end

    def set_adoption_form
      @adoption_form = AdoptionForm.find(params[:id])
    end

    def adoption_form_params
      params.require(:adoption_form).permit(:name, :last_name, :address, :neighborhood, 
                                            :region, :city, :phone, :mobile_phone, :email, 
                                            :age, :ingresos_mensuales, :profesion, :tipo_de_vivienda, 
                                            :tipo_de_propiedad_de_la_vivienda, :question_1, :question_2, 
                                            :question_3, :question_4, :question_5, :question_6, :question_7,
                                            :question_8, :question_9, :question_10, :question_11, :question_12, 
                                            :question_13, :question_14, :question_15, :question_16, :question_17, 
                                            :question_18, :question_19, :question_20, :question_21, :question_22, 
                                            :question_23, :question_24, :question_25, :question_26, :question_27, 
                                            :question_28, :pet_id)
    end
end
