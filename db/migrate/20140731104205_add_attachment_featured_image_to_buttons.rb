class AddAttachmentFeaturedImageToButtons < ActiveRecord::Migration
  def self.up
    change_table :buttons do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :buttons, :featured_image
  end
end
