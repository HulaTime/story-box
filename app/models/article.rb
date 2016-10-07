class Article < ApplicationRecord

	validates :title, presence: true, length: {minimum: 3}

	belongs_to :user
	has_many :reviews

	def first_three_lines
		body.split("\n")[0..2].join("\n")
	end

end