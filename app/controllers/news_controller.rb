class NewsController < ApplicationController

	def index
		@response = HTTParty.get("https://newsapi.org/v1/articles?source=bbc-sport&apiKey=#{ENV['NEWS_KEY']}").response
	end

end
