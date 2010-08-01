class AddPersonIdColumnName < ActiveRecord::Migration
  def self.up
    add_column :us_residencies, :person_id, :string
  end

  def self.down
  end
end
