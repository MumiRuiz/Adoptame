#En este nuevo controlador que acabamos de generar queremos redefinir parte de la funcionalidad del 
#controlador de registros de Devise, por lo que lo modificaremos para que herede de Devise::RegistrationsController 
#en lugar de ApplicationController

class RegistrationsController < Devise::RegistrationsController
  
	def create
	 	super
	 	session[:omniauth] = nil unless @user.new_record? 
	end
  
  private
  #apply_ommiauth esta definido en el modelo de usuario
  def build_resource(*args)
    super
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
      @user.valid?
    end
  end
end

