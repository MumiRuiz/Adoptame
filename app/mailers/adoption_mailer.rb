class AdoptionMailer < ActionMailer::Base
  default from: "info@adoptame.co"

  def adoption_email(adoption_form)
  	@adoption_form = adoption_form
  	mail(to: adoption_form.email, subject: "Haz solicitado una nueva adopcion en Adoptame")
  end
end
