class LandingPageController < ApplicationController

	def index
		redirect_to home_path and return if user_signed_in?
		render '/news/index'
	end

end