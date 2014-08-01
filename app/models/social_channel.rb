class SocialChannel < ActiveRecord::Base
  # Validation
  validates :name, :presence => true
end
