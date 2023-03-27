class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  
    def create
      restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  
      if restaurant_pizza.save   

         render json: { message: "Pizza added to restaurant successfully" }, status: :created
      else
         render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def restaurant_pizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  
    def render_not_found_response
      render json: { error: "Restaurant pizza not found" }, status: :not_found
    end
  
  end
  