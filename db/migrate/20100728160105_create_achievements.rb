class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.integer :person_id
      t.string :kind
      t.string :title
      t.string :authors
      t.string :outlet
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
