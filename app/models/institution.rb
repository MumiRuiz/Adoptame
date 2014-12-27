class Institution < ActiveRecord::Base
	
  has_attached_file :photo, :styles => { :large => "708x671#", :medium => "320x290#", :mediumsmall => "259x159#",  :small => "288x268#", :thumb => "160x160#" },
                  :storage => :s3,
                  :bucket => 'adoptame-pets-photos'

  validates_attachment_content_type :photo, :presence => true, :size => { :in => 0..10.megabytes }, :content_type => /\Aimage\/.*\Z/

  default_scope { order(created_at: :desc)}
	
	has_many :adoptions, dependent: :destroy
	has_many :pets#, through: :adoptions

	validates :name, presence: { message: " Es requerido"},
					 uniqueness: {case_sensitive: false,message: "Esta institution ya existe"}

  before_destroy :ensure_not_referenced_by_any_adoption
  
  private

  # ensure that there are no adoption referencing this product
  def ensure_not_referenced_by_adoption
    if adoptions.empty?
      return true
    else
      errors.add(:base, 'Adoption present')
      return false
    end
  end
end
