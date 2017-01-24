class Order < ApplicationRecord
	belongs_to :product
	belongs_to :user	# relationship user and order model
end