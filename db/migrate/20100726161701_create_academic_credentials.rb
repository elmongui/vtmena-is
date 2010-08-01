class CreateAcademicCredentials < ActiveRecord::Migration
  def self.up
    create_table :academic_credentials do |t|
      t.integer :student_id
      t.string :b_sc_university
      t.string :b_sc_area
      t.integer :b_sc_year
      t.decimal :b_sc_gpa, :precision=>3, :scale=>2
      t.string :m_sc_university
      t.string :m_sc_area
      t.integer :m_sc_year
      t.decimal :m_sc_gpa, :precision=>3, :scale=>2
      t.integer :gre_v
      t.integer :gre_q
      t.decimal :gre_a, :precision=>2, :scale=>1
      t.integer :toefl

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_credentials
  end
end
