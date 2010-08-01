class RemoveAdvisorsFromMenaProgress < ActiveRecord::Migration
  def self.up
	remove_column :vtmena_academic_progresses, :vt_advisor_id
	remove_column :vtmena_academic_progresses, :mena_advisor_id
  end

  def self.down
  end
end
