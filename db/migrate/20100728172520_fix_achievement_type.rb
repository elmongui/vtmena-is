class FixAchievementType < ActiveRecord::Migration
  def self.up
	remove_column :achievements, :type
  end

  def self.down
  end
end
