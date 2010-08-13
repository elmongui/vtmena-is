class FixAcademicCredentialApplicantIdColumn < ActiveRecord::Migration
	def self.up
		rename_column :academic_credentials, :student_id, :applicant_id
	end

	def self.down
		rename_column :academic_credentials, :applicant_id, :student_id
	end
end
