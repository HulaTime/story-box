class LandingPageController < ApplicationController

	def index
		if user_signed_in?
			redirect_to home_path 
		else
			redirect_to news_path
		end
	end

end