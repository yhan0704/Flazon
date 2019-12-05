class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :add_to_cart, :destroy, ]
  before_action :authorized, except: [:index]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end


  def create
    @item = Item.create(items_strong_params)
    if @item.valid?
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @item.update(items_strong_params)
    if @item.valid?
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def add_to_cart
    current_cart << @item.id
    redirect_to item_path(@item.id)
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
