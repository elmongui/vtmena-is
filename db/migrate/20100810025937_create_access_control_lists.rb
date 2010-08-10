class CreateAccessControlLists < ActiveRecord::Migration
  def self.up
    create_table :access_control_lists do |t|
      t.integer :user_id
      t.string :user_mgmt
      t.string :student_mgmt
      t.string :course_mgmt
      t.string :library_mgmt

      t.timestamps
    end
  end

  def self.down
    drop_table :access_control_lists
  end
end
