class HousesController < ApplicationController
	def index
		list
		render 'list'
	end
	def list
		@houses = House.find(:all)
	end
	def show
		@house = House.where(params[:id])
	end

	def enquiry_detail
		@houses = House.where("house_type=? and is_booked =?", params[:house_type],false)
		@count_houses = House.where("house_type=? and is_booked =?", params[:house_type],false).count
		#raise @houses.inspect
	end
end
