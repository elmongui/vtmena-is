class CreateRegisteredCourses < ActiveRecord::Migration
  def self.up
    create_table :registered_courses do |t|
      t.integer :student_id
      t.integer :course_schedule_id
      t.string :grade

      t.timestamps
    end
  end

  def self.down
    drop_table :registered_courses
  end
end
