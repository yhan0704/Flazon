class UserItemsController < ApplicationController

    before_action :find_useritem, only: [:show]

    def show

    end


    def create
      params[:id]
      # byebug
      session[:cart].each do |cart_length|
        @user_item = UserItem.create(user_id: params[:id], item_id: cart_length)
      end
      session[:cart]=[]
      redirect_to home_path
    end

    def find_useritem
        @useritem = UserItem.find(params[:id])
    end
end
