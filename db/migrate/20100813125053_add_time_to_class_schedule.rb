class AddTimeToClassSchedule < ActiveRecord::Migration
  def self.up
    add_column :class_schedules, :au_time_from, :time
    add_column :class_schedules, :au_time_to, :time
  end

  def self.down
    remove_column :class_schedules, :au_time_to
    remove_column :class_schedules, :au_time_from
  end
end
