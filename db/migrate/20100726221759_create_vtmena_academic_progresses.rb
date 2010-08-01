class CreateVtmenaAcademicProgresses < ActiveRecord::Migration
  def self.up
    create_table :vtmena_academic_progresses do |t|
      t.integer :student_id
      t.integer :vt_advisor_id
      t.integer :au_advisor_id
      t.string :research_topic
      t.decimal :vt_gpa,				:precision => 3, :scale => 2
      t.integer :vt_course_credits
      t.integer :vt_research_credits
      t.decimal :au_gpa,				:precision => 3, :scale => 2
      t.integer :au_course_credits
      t.integer :au_research_credits
      t.integer :total_course_credits
      t.integer :total_research_credits

      t.timestamps
    end
  end

  def self.down
    drop_table :vtmena_academic_progresses
  end
end
