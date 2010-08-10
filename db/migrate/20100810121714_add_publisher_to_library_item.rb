class AddPublisherToLibraryItem < ActiveRecord::Migration
  def self.up
    add_column :library_items, :publisher, :string
  end

  def self.down
    remove_column :library_items, :publisher
  end
end
