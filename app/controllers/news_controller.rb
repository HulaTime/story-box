class NewsController < ApplicationController

	def index
		@news_sources = HTTParty.get("https://newsapi.org/v1/sources?language=en&apiKey=#{ENV['NEWS_KEY']}")['sources']
		
	end

end
