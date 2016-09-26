class NewsController < ApplicationController

	def index
		response_body = HTTParty.get("https://newsapi.org/v1/articles?source=bbc-sport&apiKey=#{ENV['NEWS_KEY']}").body
		@body = JSON.parse(response_body)['articles']
		p @body.first['title']
	end

end
