class NewsController < ApplicationController

	def index
		# @sources = HTTParty.get("https://newsapi.org/v1/sources?language=en&apiKey=#{ENV['NEWS_KEY']}")['sources']
		@articles = Article.all
	end

end
