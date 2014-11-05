require 'test_helper'

class PetTest < ActiveSupport::TestCase
  	test "the pet must have content" do
  	  pet = Pet.new

  	  assert !pet.save, "Pet was saved empty"
  	end
end
