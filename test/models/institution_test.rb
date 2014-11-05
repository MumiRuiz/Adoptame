require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase
  	
  	test "the institution must have content" do
  	  inst = Institution.new

  	  assert !inst.save, "inst was saved empty"
  	end

  	test "The institution can't be saved a existing name" do
  		inst = Institution.new
  		inst.name institutions(:one).name

  		assert !inst.save, "Institution saved with an existing name"
  	end
  	#Prueba que imprime los posibles errores
  	#inst = Institution.new
  	#puts "--ERRORS--"
  	#inst.errors.full_messages.each{ |msg| puts msgs }	

  	test "Pet story has at least 10 characters" do
  		inst = Institution.new
  		inst.story = "Test"
  		assert !inst.save, "inst was saved w/out inst id"
  	end
end
