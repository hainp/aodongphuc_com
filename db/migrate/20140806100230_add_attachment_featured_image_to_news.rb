class AddAttachmentFeaturedImageToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :news, :featured_image
  end
end
