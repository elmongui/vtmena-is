class AddAddressToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :eg_address_1, :string
    add_column :people, :eg_address_2, :string
    add_column :people, :eg_city, :string
    add_column :people, :eg_governorate, :string
    add_column :people, :postal_code, :string
  end

  def self.down
    remove_column :people, :postal_code
    remove_column :people, :eg_governorate
    remove_column :people, :eg_city
    remove_column :people, :eg_address_2
    remove_column :people, :eg_address_1
  end
end
