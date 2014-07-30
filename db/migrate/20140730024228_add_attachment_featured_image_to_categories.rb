class AddAttachmentFeaturedImageToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :categories, :featured_image
  end
end
