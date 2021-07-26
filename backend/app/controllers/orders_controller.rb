class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders, include: [:customers, :drinks]
    end

    def show
        order = Order.find_by(params[:id])
        render json: order, include: [:customer, :drink]
    end

    def create 
        order = Order.create(order_params)
        render json: order
    end

    private 
    def order_params 
        params.require(:order).permit(:drink_id, :customer_id)
    end

end
