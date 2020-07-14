class Api::ProductsController < ApplicationController
    #before_action: set_category

    def index 
        @products = Product.all 
        render json: @products 
    end 

    def show 
        find_product
        render json: @product
    end

    def create 
    end

    def update
    end

    def destroy
    end


    private 
    def find_product
        @product = Product.find(params[:id])
    end

    def set_category 

    end

    def product_params
        params.require(:product).permit(:category_id, :price, :product_name, :source_name)
    end

end
