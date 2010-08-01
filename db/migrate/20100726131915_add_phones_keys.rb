class AddPhonesKeys < ActiveRecord::Migration
  def self.up
    add_column :phones, :owner_id, :integer
    add_column :phones, :owner_type, :string
	remove_column :us_residencies, :person_id
	add_column :us_residencies, :person_id, :integer
  end

  def self.down
  end
end
