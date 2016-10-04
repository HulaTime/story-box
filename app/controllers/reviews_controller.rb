class ReviewsController < ApplicationController

	def index
	end

	def new
	end

	def create
		current_user.reviews.create(review_params)
		redirect_to articles_path
	end

	private

	def review_params
		params.permit(:comments, :rating, :article_id)
	end

end
