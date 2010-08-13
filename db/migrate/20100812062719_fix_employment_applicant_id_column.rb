class FixEmploymentApplicantIdColumn < ActiveRecord::Migration
	def self.up
		rename_column :employments, :student_id, :applicant_id
	end

	def self.down
		rename_column :employments, :applicant_id, :student_id
	end
end
