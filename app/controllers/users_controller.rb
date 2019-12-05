class UsersController < ApplicationController
   
    before_action :authorized, except: [:index, :about, :contact]

    def index
        
    end

    def about
        
    end

    def contact
        
    end
    def show
        
    end
end
