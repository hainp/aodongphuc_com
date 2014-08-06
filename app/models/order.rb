class Order < ActiveRecord::Base
  # Validation
  validates :name, :phone, :title, :content, :presence => true
end
