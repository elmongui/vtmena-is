class AddYearToLibraryItems < ActiveRecord::Migration
  def self.up
    add_column :library_items, :year, :integer
  end

  def self.down
    remove_column :library_items, :year
  end
end
