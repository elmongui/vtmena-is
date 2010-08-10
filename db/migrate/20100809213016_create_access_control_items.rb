class CreateAccessControlItems < ActiveRecord::Migration
  def self.up
    create_table :access_control_items do |t|
      t.integer :user_id
      t.string :target
      t.string :access

      t.timestamps
    end
  end

  def self.down
    drop_table :access_control_items
  end
end
