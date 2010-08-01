class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer :owner_id
      t.integer :owner_type
      t.string :number

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
