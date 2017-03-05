class Frontend::PagesController < ApplicationController
	layout 'pricelayout'
	
	def price
        @contact = Contact.new
	end
	
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
          redirect_to  root_path ,notice: "Demande envoyée. Nous vous contacterons bientot!"
        else

          redirect_to root_path , notice:"Votre demande n'est pas envoyer essayer une autre fois"
        end 
    end

    def maps
      @beboxes = Bebox.all

    end

private
    def contact_params
  		params.require(:contact).permit(:name,:surname, :company , :email , :Telephone,:message)
  	end
end
