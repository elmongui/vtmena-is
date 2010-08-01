class CreateEmployments < ActiveRecord::Migration
  def self.up
    create_table :employments do |t|
      t.integer :student_id
      t.string :present_employer
      t.string :position
      t.boolean :government
      t.boolean :mission

      t.timestamps
    end
  end

  def self.down
    drop_table :employments
  end
end
