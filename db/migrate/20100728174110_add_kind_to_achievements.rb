class AddKindToAchievements < ActiveRecord::Migration
  def self.up
    add_column :achievements, :kind, :string
  end

  def self.down
    remove_column :achievements, :kind
  end
end
