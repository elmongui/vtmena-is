class CreateAdvisorships < ActiveRecord::Migration
  def self.up
    create_table :advisorships do |t|
      t.integer :student_id
      t.integer :professor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :advisorships
  end
end
