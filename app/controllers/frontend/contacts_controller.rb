class Frontend::ContactsController < ApplicationController
	def create
     @contact = Contact.new(contact_params)
     if @contact.save
        redirect_to  root_path ,notice: "Message envoye"
     else
        
      redirect_to root_path , notice: "Une Erreur s'est produite, le message n'a pas ete envoye. Veuillez essayer encore"
        end 
    end
    
    private
    def contact_params
  		params.require(:contact).permit(:name,:surname, :company , :email , :Telephone,:message)
  	end
  	
end
