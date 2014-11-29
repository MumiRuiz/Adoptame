class Pet < ActiveRecord::Base
  #list en orden ascendente las mascotas
  default_scope { order(created_at: :desc)}

  before_destroy :ensure_not_referenced_by_any_adoption
  
  has_many :adoptions
  belongs_to :user#, through: :adoptions
  belongs_to :institution

  #validates :id, presence: true
    validates :name, presence: true
    validates :kind, presence: true
    validates :age, presence: true
    validates :size, presence: true
    validates :story, presence: true,
              length: { minimum: 6, message: "debe tener entre minimo 10 caracteres"}

  
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
