class FrontendController < ApplicationController
    layout "frontend"
    
    def index
    	@contact = Contact.new 

    end

end
