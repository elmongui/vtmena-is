class AddUsResidencyToPhones < ActiveRecord::Migration
  def self.up
    add_column :phones, :us_residency_id, :integer
  end

  def self.down
    remove_column :phones, :us_residency_id
  end
end
