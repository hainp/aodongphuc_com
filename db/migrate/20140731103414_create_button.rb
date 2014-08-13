class CreateButton < ActiveRecord::Migration
  def change
    # drop_table :buttons
    create_table :buttons do |t|
      t.string :name
      t.string :link
      t.timestamps
    end
  end
end
