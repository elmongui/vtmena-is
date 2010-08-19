class CreateClassSessions < ActiveRecord::Migration
  def self.up
    create_table :class_sessions do |t|
      t.integer :class_schedule_id
      t.string :location
      t.integer :day
      t.time :au_time_from, :default=>'00:00:00'
      t.time :au_time_to, :default=>'00:00:00'

      t.timestamps
    end
  end

  def self.down
    drop_table :class_sessions
  end
end
