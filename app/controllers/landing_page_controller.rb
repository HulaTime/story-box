class LandingPageController < ApplicationController

	def index
		@news_sources = HTTParty.get("https://newsapi.org/v1/sources?language=en&apiKey=#{ENV['NEWS_KEY']}")['sources']
		redirect_to home_path and return if user_signed_in?
		render '/news/index'
	end

end