class DrinksController < ApplicationController
    def index
        drinks = Drink.all
        render json: drinks, include: [:orders, :customers]
    end

    def show
        drink = Drink.find_by(params[:id])
        render json: drink, include: [:orders, :customers]
    end

    def update
        drink = drink.find_by(params[:id])
        drink.update(drink_params)
        render json: drink, include: [:orders, :customers]
    end

    private
    def drink_params
        params.require(:drink).permit(:name, :ingredients, :price)
    end
end
