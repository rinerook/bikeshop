class Product < ApplicationRecord							#  product class is a subclass (inherits from) of the ApplicationRecord class
	has_many :orders
	has_many :comments

	# custom method for product,return comment with highest rating
	def highest_rating_comment
 		comments.rating_desc.first
	end

end
