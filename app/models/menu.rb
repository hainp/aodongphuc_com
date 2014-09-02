class Menu < ActiveRecord::Base
  has_many :subordinates, class_name: "Menu",
                          foreign_key: "parent_id"
  belongs_to :parent, class_name: "Menu"
  validates :order, :presence => true
end
