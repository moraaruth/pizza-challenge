class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas, dependent: :destroy
    has_many :pizzas, through: :restaurant_pizzas

    validates :name, presence: true
    validates :address, presence: true

end
