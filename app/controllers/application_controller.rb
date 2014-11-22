class ApplicationController < ActionController::Base
	#Permite que la aplicacion se adapte al idioma del usuario solo para Devise
	before_action :set_locale	
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	#Revisa el role de cada usuario para cada accion
	#check_authorization

	#Imprime una exepcion si la autenticacion de admin falla
	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => exception.message
  	end

  	#Traducciones del sitio
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end
end
