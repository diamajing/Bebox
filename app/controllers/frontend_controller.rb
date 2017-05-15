class FrontendController < ApplicationController
    layout "frontend"
    
    def index
    	@contact = Contact.new 
    end
    
    def test
        @variable = Bebox.first
        render :json => @variable.location
    end

end
