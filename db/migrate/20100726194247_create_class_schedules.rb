class CreateClassSchedules < ActiveRecord::Migration
  def self.up
    create_table :class_schedules do |t|
      t.integer :course_id
      t.string :semester
      t.string :year
      t.string :vtel
      t.boolean :offered

      t.timestamps
    end
  end

  def self.down
    drop_table :class_schedules
  end
end
