class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_attached_file :featured_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
  # Validation
  validates :name, :presence => true
  validates_attachment_content_type :featured_image, :content_type => /\Aimage\/.*\Z/
end
