class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :pets
  has_many :adoptions, dependent: :destroy


  before_destroy :ensure_not_referenced_by_any_adoption
  
  private

  # ensure that there are no adoption referencing this product
  def ensure_not_referenced_by_any_adoption
    if adoptions.empty?
      return true
    else
      errors.add(:base, 'Adoption present')
      return false
    end
  end     
end
