class CreateRegisteredClasses < ActiveRecord::Migration
  def self.up
    create_table :registered_classes do |t|
      t.integer :student_id
      t.integer :class_schedule_id
      t.string :grade

      t.timestamps
    end
  end

  def self.down
    drop_table :registered_classes
  end
end
