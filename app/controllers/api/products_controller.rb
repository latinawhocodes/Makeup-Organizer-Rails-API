class Api::ProductsController < ApplicationController

    def index 
        get_category
        @products = @category.products 
        render json: @products
    end 

    def show 
        get_category
        @products = @category.products.find_by(id: params[:id])
        render json: @products
    end

    def create 
        @product = @category.products.build(product_params)
        if @product.save 
            render json: @product 
        else 
            render json: {message: "ERROR"}
        end
    end 
    
    def update
    end

    def destroy
        get_category
        find_product
        @category = Category.find(@product.category_id)
        @product.destroy 
    end

    private 
    def find_product
        @product = Product.find(params[:id])
    end

    def get_category 
        @category = Category.find(params[:category_id])
    end

    def product_params
        params.require(:product).permit(:category_id, :price, :product_name, :source_name)
    end

end
