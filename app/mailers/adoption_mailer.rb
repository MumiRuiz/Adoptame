class AdoptionMailer < ActionMailer::Base
  default from: "info@adoptame.co"

  def adoption_email(adoption_form)
  	@adoption_form = adoption_form
  	mail(to: adoption_form.email, subject: "Haz solicitado una nueva adopcion en Adoptame")
  end

  def institution_email(institution_adoption_form)
  	@institution_adoption_form = institution_adoption_form
  	mail(to: institution_adoption_form.email, subject: "Se ha solicitado la adopcion de una de sus mascotas")
  end
end
