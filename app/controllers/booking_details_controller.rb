class BookingDetailsController < ApplicationController

	def new
		@booking = BookingDetail.new
		@floor_number = House.where("house_type=? and is_booked =?", params[:house_type],false).select("DISTINCT(floor_number)")
		@house_type = params[:house_type]
		# raise @floor_number.inspect
	end
	def create
		
		@booking = BookingDetail.find_by_user_id(current_user_id)
		@user = House.find(:first, :conditions =>["house_type =? and floor_number =? and is_booked =?",params[:booking_detail][:interested_in],params[:booking_detail][:selected_floor],false])
		if !@booking
			@booking = BookingDetail.new(params[:booking_detail].merge(:user_id => current_user_id))
			 @booking.save
			 @user.update_attributes(:is_booked => true)
			flash[:notice] = "Succesfully Booking Detail Created"
			redirect_to houses_path
		else
			flash[:notice] = "You Have Already Booked One House"
			redirect_to root_path
		end
	end
	def booking_info
		
	end
end
