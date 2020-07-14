class Api::CategoriesController < ApplicationController

    def index 
        @categories = Category.all 
        render json: @categories
    end 

    def show 
        find_category
        render json: @category
    end

    def create 
        @category = Category.new(category_params)
        if @category.save 
            render json: @category 
        else 
            render json: {message: "ERROR"}
        end
    end

    # def update
        
    # end

    def destroy
        find_category
        @category.destroy 
        
    end


    private 
    def find_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(:category_name)
    end
    
end
