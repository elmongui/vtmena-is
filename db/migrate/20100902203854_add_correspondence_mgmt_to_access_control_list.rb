class AddCorrespondenceMgmtToAccessControlList < ActiveRecord::Migration
  def self.up
    add_column :access_control_lists, :correspondence_mgmt, :string
  end

  def self.down
    remove_column :access_control_lists, :correspondence_mgmt
  end
end
