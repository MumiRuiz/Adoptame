class AdoptionMailer < ActionMailer::Base
  default from: "info@adoptame.co"

  #Configuracion de mails para usuarios una vez se guarda una solicitud de adopcion
  def adoption_email(adoption_form)
  	@adoption_form = adoption_form
  	mail(to: adoption_form.email, subject: "Haz solicitado una nueva adopcion en Adoptame")
  end

=begin

  def institution_email(institution_adoption)
  	institution_adoption = institution_adoption
  	@email = institution_adoption.pet.institution.email
  	#@institution_info.email
  	mail(to: @email, subject: "Se ha solicitado la adopcion de una de sus mascotas")
  end

=end
end
