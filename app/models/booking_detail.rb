class BookingDetail < ActiveRecord::Base

	validates :name,:interested_in, :presence => {:message => "Fields should not be blank"}
	validates :mobile_number,  :length => {:minimum => 10}

end
