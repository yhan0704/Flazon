class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :authorized, except: [:index]
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  
  def add
    cart << params[:product]
    render :index
  end

  def create
    @item = Item.create(items_strong_params)
    redirect_to item_path(@item)
  end

  def show
  end

  def edit
  end

  def update
    @item.update(items_strong_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private
    def find_item
      @item = Item.find(params[:id])
    end
    def items_strong_params
      params.require(:item).permit(:name, :price, :category_id)
    end
end
