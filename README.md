# Pizza-Restaurant-API
This is a RESTful API built with Ruby on Rails for managing pizza restaurants and their associated pizzas.

## Author 
Ruth Moraa

## Date Created
March 21st, 2023

##  Technologies Used

1. Ruby ---2.7.0
2. Ruby on Rails
3. Active Record
4. Postman

## Entity Relationship Diagram
![pizzas-api](https://user-images.githubusercontent.com/99965020/226153770-d3201988-c3e1-49bf-8a1f-acbe4180c3ee.png)

## API Endpoints

### Restaurants

1. GET /restaurants: Returns a list of all restaurants in the database.
2. GET /restaurants/:id: Returns details for a specific restaurant, including a list of its associated pizzas.
3. DELETE /restaurants/:id: Deletes a restaurant and all of its associated RestaurantPizza records.

### Pizzas

*1. GET /pizzas:* Returns a list of all pizzas in the database.

### Restaurant Pizzas

*1. POST /restaurant_pizzas:* Creates a new RestaurantPizza that is associated with an existing Pizza and Restaurant.


The API utilizes the following models

1. Restaurant
2. Pizza
3. RestaurantPizza

## Set Up

To set up this project locally, follow these steps:

1. Clone this repository to your local machine using git clone https://github.com/username/repo.git
2. cd into the project directory
3. Run `bundle install` command to install all necessary gems
4. Run `rails db:migrate` command to create the database tables
5. Run `rails db:seed` command to populate the database with sample data
6. Start the server with `rails server` command
7. Use Postman to make requests to the API endpoints

