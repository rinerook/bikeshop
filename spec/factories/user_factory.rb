FactoryGirl.define do  # tell rails using FactoryGirl to define factories
  sequence(:email) { |n| "user#{n}@example.com" }  # "generates" mail adresses 
  factory :user do	
    first_name 'Local'
  	last_name 'Horst'
  	email 
  	password 'password'
  	admin false
  end 
  factory :admin, class: User do  
    first_name 'Admin'
    last_name 'User'
    email 
    password 'qwertz1234'
    admin true
  end
end