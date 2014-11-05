class Pet < ActiveRecord::Base
	has_many :adoptions
	has_many :institutions
	has_many :users, through: :adoptions

	#validates :id, presence: true
  	validates :name, presence: true
  	validates :kind, presence: true
  	validates :age, presence: true
  	validates :size, presence: true
  	validates :story, presence: true,
  					  length: { minimum: 6, message: "debe tener entre minimo 10 caracteres"}
end
