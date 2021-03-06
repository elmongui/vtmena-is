class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :type
      t.string :first_name
      t.string :middle_names
      t.string :last_name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :governorate
      t.string :postal_code
	  t.string :university
	  t.string :department

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
