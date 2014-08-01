class CreateSocialChannels < ActiveRecord::Migration
  def change
    create_table :social_channels do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
