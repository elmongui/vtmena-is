class AddProfessorDept < ActiveRecord::Migration
	def self.up
		add_column :people, :university, :string
		add_column :people, :department, :string
	end

  def self.down
  end
end
