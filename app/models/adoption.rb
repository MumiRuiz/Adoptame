class Adoption < ActiveRecord::Base
  belongs_to :institution
  belongs_to :pet
  belongs_to :user
end
