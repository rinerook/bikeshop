require 'rails_helper'    # to get access to configuration needed to write rspec tests

describe Product do       # tell rspec we want to test product model
  before do               # create product, user and ratings  
    @product = Product.create!(name: "race bike", description: "test", image_url: "9.jpg", colour: "hallo", price: "199")
    @user = User.create!(email: "localhorst@gmx.de", password: "password")
    @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
    @product.comments.create!(rating: 2, user: @user, body: "Nice bike!")
    @product.comments.create!(rating: 3, user: @user, body: "Great bike!")
  end

  it "returns the average rating of all comments" do  #despricption of what we want to happen
    expect(@product.average_rating).to eq 2  
  end

  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end

end