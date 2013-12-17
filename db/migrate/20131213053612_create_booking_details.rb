class CreateBookingDetails < ActiveRecord::Migration
  def self.up
    create_table :booking_details do |t|
    	t.string	:name
    	t.integer	:user_id
    	t.string	:father_name
    	t.integer 	:age
    	t.string	:address
    	t.string	:city
    	t.string	:state
    	t.integer 	:pincode
    	t.string 	:mobile_number
    	t.string	:interested_in

      	t.timestamps
    end
  end

  def self.down
    drop_table :booking_details
  end
end
