class Product < ApplicationRecord							#  product class is a subclass (inherits from) of the ApplicationRecord class
	has_many :orders
end
