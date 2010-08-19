class RemoveTimeDayFromClassSchedule < ActiveRecord::Migration
  def self.up
    remove_column :class_schedules, :location
    remove_column :class_schedules, :day
    remove_column :class_schedules, :au_time_to
    remove_column :class_schedules, :au_time_from
  end

  def self.down
    add_column :class_schedules, :au_time_from, :time
    add_column :class_schedules, :au_time_to, :time
    add_column :class_schedules, :day, :string
    add_column :class_schedules, :location, :string
  end
end
