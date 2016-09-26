class FrontendController < ApplicationController
    layout "frontend"
    
    def index
    	@contact = Contact.new 

    end
    def create
    	@contact = Contact.new(contact_param)
     
    end	
    
   def contact_param
   	params.require(:contact).permit(:name, :surname , :company , :email,:Telephone,:message)
   end
 
 
end
