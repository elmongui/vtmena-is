class FixPhonesKeys < ActiveRecord::Migration
  def self.up
    remove_column :phones, :person_id
    remove_column :phones, :us_residency_id
  end

  def self.down
  end
end
