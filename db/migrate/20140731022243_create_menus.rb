class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :link
      t.references :parent
      t.timestamps
    end
  end
end
