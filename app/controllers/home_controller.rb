class HomeController < ApplicationController
	#Buscador con ransack
    def home
    @pets = Pet.all.limit(4)
	@search = Pet.ransack(params[:q])
	@pets = @search.result
    end
end
