class Institution < ActiveRecord::Base
	has_many :adoptions
	has_many :pets, through: :adoptions

	validates :name, presence: { message: " Es requerido"},
					 uniqueness: {case_sensitive: false,message: "Esta institution ya existe"}

end
