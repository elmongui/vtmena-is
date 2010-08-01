class FixAcademicProgress < ActiveRecord::Migration
	def self.up
		remove_column :vtmena_academic_progresses, :au_advisor_id
		add_column :vtmena_academic_progresses, :mena_advisor_id, :integer
  end

  def self.down
  end
end
