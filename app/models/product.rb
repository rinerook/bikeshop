class Product < ApplicationRecord							#  product class is a subclass (inherits from) of the ApplicationRecord class
	has_many :orders
	has_many :comments

	# set validation for form elements which  don't have to be empty
	validates :name, presence: true
	validates :price, presence: true

	# custom method for product,return comment with highest rating
	def highest_rating_comment
 		comments.rating_desc.first
	end

	def lowest_rating_comment
	  comments.rating_asc.first
	end

	def average_rating
  		comments.average(:rating).to_f
	end

end