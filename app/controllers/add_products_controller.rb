class AddProductsController < ApplicationController

    def index
        @add_products = AddProduct.all 
        render json: @add_products
    end 

    def show 
        @add_product = AddProduct.find(params[:id])
        render json: @add_product
    end 

    def test 
        puts 'hello'
    end 
    
    
    def create
        @add_product = AddProduct.create!(add_product_params)
        render json: @add_product
    end 

    private 

    def add_product_params 
        params.permit(:cart_id, :product_id, :quantity)
    end 
    
end
