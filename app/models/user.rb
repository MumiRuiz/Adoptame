class User < ActiveRecord::Base
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        	:recoverable, :rememberable, :trackable, :validatable, :confirmable

        	
    before_create :setup_default_role_for_new_users     
	ROLES = %w[admin default]

	def role_symbols  
  		[role.to_sym]  
	end 

	private
  	def setup_default_role_for_new_users
    	if self.role.blank?
      		self.role = "default"
    	end
  	end        
end
