class CategoriesController < ApplicationController
    
    before_action :find_category, only: [:show, :edit, :update, :destroy]
    before_action :authorized, except: [:index]

    def index
        @categories = Category.all
    end

    def show
    end 
    
    def new
        @category = Category.new
    end

    def create
        @category = Category.create(category_params)
            if @category.valid?
                redirect_to category_path(category)
            else
                render :new
            end
    end

    def edit
    end

    def update
        @category.update(category_params)
            if @category.valid?
                redirect_to category_path(@category)
            else
                render :edit
            end
    end

    def destroy
        @category.destroy
        redirect_to categories_path
    end

    def find_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(:name)
    end

end
