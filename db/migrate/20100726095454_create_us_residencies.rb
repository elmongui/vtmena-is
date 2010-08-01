class CreateUsResidencies < ActiveRecord::Migration
  def self.up
    create_table :us_residencies do |t|
      t.integer :person_id
      t.date :date_started
      t.date :date_ended
      t.phones :phones
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end

  def self.down
    drop_table :us_residencies
  end
end
