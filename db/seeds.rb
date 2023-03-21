require 'faker'

# Create 10 restaurants
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# Create 20 pizzas
20.times do
  Pizza.create!(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient
  )
end

# Create RestaurantPizza objects for each pizza and restaurant
Pizza.all.each do |pizza|
    Restaurant.all.sample(5).each do |restaurant|
      RestaurantPizza.create!(
        pizza: pizza,
        restaurant: restaurant,
        price: Faker::Commerce.price(range: 5..15.0)
      )
    end
end
