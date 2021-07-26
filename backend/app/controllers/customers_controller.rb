class CustomersController < ApplicationController
    def index
        customers = Customer.all 
        render json: customers, include: [:orders, :drinks]
    end

    def show
        customer = Customer.find_by(params[:id])
        render json: customer, include: [:orders, :drinks]
    end
end
