class CreateLibraryItems < ActiveRecord::Migration
  def self.up
    create_table :library_items do |t|
      t.string :type
      t.string :name
      t.string :authors
      t.integer :count
      t.integer :edition

      t.timestamps
    end
  end

  def self.down
    drop_table :library_items
  end
end
