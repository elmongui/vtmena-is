class CreateCorrespondences < ActiveRecord::Migration
  def self.up
    create_table :correspondences do |t|
      t.integer :correspondence_topic_id
      t.string :in_out
      t.date :date
      t.string :status
      t.string :details

      t.timestamps
    end
  end

  def self.down
    drop_table :correspondences
  end
end
