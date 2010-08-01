class FixAddressColumnName < ActiveRecord::Migration
  def self.up
    rename_column :people, :eg_address_1, :address_1
    rename_column :people, :eg_address_2, :address_2
	rename_column :people, :eg_city, :city
	rename_column :people, :eg_governorate, :governorate
  end

  def self.down
  end
end
