class Comment < ApplicationRecord

	belongs_to :user
  	belongs_to :product

  	validates :body, presence: true
  	  validates :user, presence: true
  	  validates :product, presence: true
  	  validates :rating, numericality: { only_integer: true }

	# scrope for comment with best rating
	scope :rating_desc, -> { order(rating: :desc) }
	scope :rating_asc, -> { order(rating: :asc) }

end
