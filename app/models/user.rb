class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

      #Guarda los datos despues del callback de twitter
	  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
	    user = User.where(:provider => auth.provider, :uid => auth.uid).first
	    if user
	      return user
	    else
	      registered_user = User.where(:email => auth.uid + "@twitter.com").first
	      if registered_user
	        return registered_user
	      else

	        user = User.create(name:auth.extra.raw_info.name,
	                            provider:auth.provider,
	                            uid:auth.uid,
	                            email:auth.uid+"@twitter.com",
	                            password:Devise.friendly_token[0,20],)
	      end

	    end
	  end 

	#Cuando la informacion del usuario es traida de twitter la contrasena no se deberia pedir
	def self.new_with_session(params, session)
		if session["devise.user_attributes"]
			new(session["devise.user_attributes"], without_protection: true)do |user|
				user.attributes = params
				user.valid?
		end
		else
			super
		end
	end

	def password_required?
		super && provider.blank?
	end

	def update_with_password(params, *options)
		if encrypted_password.blank? && provider.present?
			update_attributes(params, *options)
		else
			super
		end
	end

end
