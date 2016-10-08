class Frontend::PagesController < ApplicationController
	layout 'pricelayout'
	
	def price
  @contactp = Contact.new
	end
	def create
     @contactp = Contact.new(contact_params)
     if @contactp.save
        redirect_to  root_path ,notice: "Demande envoyée. Nous vous contacterons bientot!"
     else
        
      redirect_to root_path , notice:"Votre demande n'est pas envoyer essayer une autre fois"
        end 
    end
    def contact_params
  		params.require(:contact).permit(:name,:surname, :company , :email , :Telephone,:message)
  	end
end
