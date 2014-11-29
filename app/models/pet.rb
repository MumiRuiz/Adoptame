class Pet < ActiveRecord::Base
  #list en orden ascendente las mascotas
  default_scope { order(created_at: :desc)}

	has_many :adoptions
	has_many :institutions
	belongs_to :user#, through: :adoptions
  belongs_to :institution

	#validates :id, presence: true
  	validates :name, presence: true
  	validates :kind, presence: true
  	validates :age, presence: true
  	validates :size, presence: true
  	validates :story, presence: true,
  					  length: { minimum: 6, message: "debe tener entre minimo 10 caracteres"}
end
