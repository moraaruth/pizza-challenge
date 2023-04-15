class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  
    def create
      restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  
      if restaurant_pizza.save   

         render json: { success: true, message: "Successfully added Pizza to restaurant successfully" }, status: :created
      else
         render json: { success: false, error: "Failed to add pizza to restaurant. Please check your input and try again.", errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
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
  