class CreateAuInfos < ActiveRecord::Migration
  def self.up
    create_table :au_infos do |t|
      t.integer :student_id
      t.string :department
      t.string :degree
      t.string :degree_program
      t.string :area
      t.string :semester_admitted
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :au_infos
  end
end
