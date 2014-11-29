class ApplicationController < ActionController::Base
	#Permite que la aplicacion se adapte al idioma del usuario solo para Devise
	before_action :set_locale	
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	private

    def current_adoption 
      Adoption.find(session[:adoption_id])
    rescue ActiveRecord::RecordNotFound
      adoption = Adoption.create
      session[:adoption_id] = adoption.id
      adoption
    end
end
