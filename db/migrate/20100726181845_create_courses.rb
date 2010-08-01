class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :number
      t.string :topic
      t.string :university

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
