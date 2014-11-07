class User < ActiveRecord::Base
	#attr_accessible :roles
	ROLES = %i[admin moderator author banned]

  	#Asignacion de atributos para cada usuario
	def roles=(roles)
	  roles = [*roles].map { |r| r.to_sym }
	  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
	end

	def roles
	  ROLES.reject do |r|
	    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
	  end
	end   

	#Verifica la clase de atributos de un usuario
	def has_role?(role)
	  roles.include?(role)
	end	

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
 	      :recoverable, :rememberable, :trackable, :validatable, :confirmable

end
