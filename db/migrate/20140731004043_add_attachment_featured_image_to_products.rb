class AddAttachmentFeaturedImageToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :products, :featured_image
  end
end
