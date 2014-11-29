class Adoption < ActiveRecord::Base
  
  default_scope { order(created_at: :desc)}	

  belongs_to :institution
  belongs_to :pet
  belongs_to :user
end
