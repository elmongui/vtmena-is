class RemoveVtTimeFromClassSchedules < ActiveRecord::Migration
  def self.up
    remove_column :class_schedules, :vt_time_from
    remove_column :class_schedules, :vt_time_to
  end

  def self.down
    add_column :class_schedules, :au_time_to, :time
    add_column :class_schedules, :au_time_from, :time
  end
end
