class DefaultTimeForClassSchedules < ActiveRecord::Migration
  def self.up
    change_column :class_schedules, :au_time_from, :time, :default => Time.at(0)
    change_column :class_schedules, :au_time_to, :time, :default => Time.at(0)
  end

  def self.down
  end
end
