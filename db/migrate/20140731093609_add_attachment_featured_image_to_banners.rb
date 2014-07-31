class AddAttachmentFeaturedImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :banners, :featured_image
  end
end
