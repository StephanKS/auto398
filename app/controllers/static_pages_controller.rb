class StaticPagesController < ApplicationController

	before_filter :signed_in_user, only: [:find_passengers]	
	
	def home
	end
	
	def find_passengers

		@liftup = current_user.liftups.build if signed_in?
	
		if @liftup.start_date.nil? then

			Time.zone = 'Moscow'
			lifttime = Time.now
			if lifttime.hour > 8 then
				lifttime = lifttime + 1.days
			end

			@liftup.start_date = lifttime.change(:hour=>8, :min => 0, :sec => 0)

		end
	end

	def find_car
		@feed_items = Liftup.all
	end

	def help
	end

end
