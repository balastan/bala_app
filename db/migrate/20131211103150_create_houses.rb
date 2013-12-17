class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.string	:house_number
      t.integer	:floor_number
      t.string	:house_type
      t.boolean	:is_booked
      t.boolean	:is_using
      t.timestamps
    end
  end

  def self.down
    drop_table :houses
  end
end
