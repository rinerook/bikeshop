class Comment < ApplicationRecord

	belongs_to :user
  	belongs_to :product

	# scrope for comment with best rating
	scope :rating_desc, -> { order(rating: :desc) }
	scope :rating_asc, -> { order(rating: :asc) }

end
