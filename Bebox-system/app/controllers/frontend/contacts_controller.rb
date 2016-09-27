class Frontend::ContactsController < ApplicationController
	def create
     @contact = Contact.new(contact_params)
     if @contact.save
        redirect_to  root_path ,notice: "message Ajouter"
     else
        
      redirect_to root_path , notice:"message n' est pas Ajouter"
        end 
    end
    def contact_params
  		params.require(:contact).permit(:name,:surname, :company , :email , :Telephone,:message)
  	end
  	
end
