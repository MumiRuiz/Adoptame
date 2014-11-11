class ApplicationController < ActionController::Base
	#Permite que la aplicacion se adapte al idioma del usuario solo para Devise
	before_action :set_locale	
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception



	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	#Rescatando el error acceso denegado y redirigiendolo al root_url
	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to root_url, :alert => exception.message
	end
end
