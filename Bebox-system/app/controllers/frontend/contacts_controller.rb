class Frontend::ContactsController < FrontendController
    def create
		@contact = Contact.new(contact_param)
		if @contact.save 
			redirect_to root_path , notice: 'votre message a été envoyé avec succés'
		else
			redirect_to root_path , alert: "erreur votre message n'est pas envoyé" 
		end
    end	

private
    
   def contact_param
   	params.require(:contact).permit(:name, :surname , :company , :email,:Telephone,:message)
   end
 
end
