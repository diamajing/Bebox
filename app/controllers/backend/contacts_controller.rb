class Backend::ContactsController < BackendController
  def index
  	@contacts = Contact.order(created_at: :desc)
  end
  def create
     @contacts = Contact.new(contact_params)
     if @contacts.save
        redirect_to  backend_contacts_path ,notice: "Contact Ajouter"
     else
        
      redirect_to new_backend_contact
        end 
    end
       def new
        @contacts = Contact.new 
    end 
    def show
    	@contacts = Contact.find(params[:id])
    end

    def edit
    	@contacts = Contact.find(params[:id])
    end

    
    def destroy
        @contacts = Contact.find(params[:id])
        if @contacts.destroy
            redirect_to backend_contacts_path ,notice: "Contact supprime"
        else
            redirect_to backend_contact_path(@contacts), notice: "problem! Contact n'a pas ete suprrime"
        end
    end      
    def contact_params
  		params.require(:contact).permit(:name, :surname , :company , :email , :Telephone ,:message)
  	end
end
