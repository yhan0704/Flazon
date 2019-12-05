class UserItemsController < ApplicationController
    
    before_action :find_useritem, only: [:show]

    def show
    end

    def create
        
    end

    def find_useritem
        @useritem = UserItem.find(params[:id])
    end
end
