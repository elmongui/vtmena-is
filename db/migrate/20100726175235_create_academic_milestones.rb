class CreateAcademicMilestones < ActiveRecord::Migration
  def self.up
    create_table :academic_milestones do |t|
      t.integer :student_id
      t.string :name
      t.string :status
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_milestones
  end
end
