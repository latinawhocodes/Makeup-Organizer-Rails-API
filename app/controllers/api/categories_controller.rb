class Api::CategoriesController < ApplicationController

    def index 
        @categories = Category.all 
        render json: @categories, except: [:created_at, :updated_at]
    end 

    def show 
        find_category
        render json: @category, except: [:created_at, :updated_at]
    end

    def create 
        @category = Category.new(category_params)
        if @category.save 
            render json: @category, except: [:created_at, :updated_at]
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
