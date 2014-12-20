class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  #Buscador con ransack
  def index
    @pets = Pet.all
    @search = Pet.ransack(params[:q])
    @pets = @search.result
  
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    #@pet = Pet.new(pet_params)
     @pet = current_user.pets.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to admin_pets_path, notice: 'Mascota creada correctamente' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  #Buscador con ransack
  def search
     @pets = Pet.tagged_with(params[:search])
     
     if @pets.empty?
       redirect_to home_index_path, alert: 'No se encontraron mascotas con los criterios de busqueda ingresados. Por favor intente con otra palabra.' 
     end
   end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to admin_pets_path, notice: 'Mascota eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :age, :kind, :gender, :size, :story, :city, :country, :region, :user_id, :institution_id, :manager, :photo,:tag_list)
    end
end
