class CreateLibraryCheckouts < ActiveRecord::Migration
  def self.up
    create_table :library_checkouts do |t|
      t.integer :library_item_id
      t.integer :person_id
      t.date :checkout
      t.date :checkin

      t.timestamps
    end
  end

  def self.down
    drop_table :library_checkouts
  end
end
