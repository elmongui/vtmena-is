class CreateCorrespondenceTopics < ActiveRecord::Migration
  def self.up
    create_table :correspondence_topics do |t|
      t.string :topic

      t.timestamps
    end
  end

  def self.down
    drop_table :correspondence_topics
  end
end
