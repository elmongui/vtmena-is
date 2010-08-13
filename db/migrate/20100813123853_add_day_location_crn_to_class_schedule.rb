class AddDayLocationCrnToClassSchedule < ActiveRecord::Migration
  def self.up
    add_column :class_schedules, :day, :string
    add_column :class_schedules, :location, :string
    add_column :class_schedules, :au_crn, :string
  end

  def self.down
    remove_column :class_schedules, :au_crn
    remove_column :class_schedules, :location
    remove_column :class_schedules, :day
  end
end
