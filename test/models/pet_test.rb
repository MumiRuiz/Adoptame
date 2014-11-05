require 'test_helper'

class PetTest < ActiveSupport::TestCase
  	
  	test "the pet must have content" do
  	  pet = Pet.new

  	  assert !pet.save, "Pet was saved empty"
  	end

  	#Prueba que imprime los posibles errores
  	#pet = Pet.new
  	#puts "--ERRORS--"
  	#pet.errors.full_messages.each{ |msg| puts msgs }	

  	test "Pet story has at least 10 characters" do
  		pet = Pet.new
  		pet.story = "Test"
  		assert !pet.save, "was saved wtihout less than 10 characters"
  	end

end
