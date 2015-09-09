require 'faker'

15.times do
  Product.create!(name: Faker::Commerce.product_name,
                description: Faker::Company.catch_phrase,
                price: Faker::Commerce.price)
end