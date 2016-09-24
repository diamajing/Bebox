class Backend::CustomersController < BackendController
	def index
		@customer = Customer.all
	end
  def new
        @customer = Customer.new 
  end

  def create
     @customer = Customer.new(customer_params)
     if @customer.save
        redirect_to  backend_customers_path ,notice: "bebox Ajouter"
     else
        
      redirect_to new_backend_customer
        end 
    end 
  
	def show
		@customer = Customer.find(params[:id])
	end
	 def edit
     	@customer = Customer.find(params[:id])
     end
   def update
      @customer = Customer.find(params[:id])
      if @customer.update(customer_params)
      redirect_to backend_customers_path ,notice: "Customer mise a jour"
      end 
     end  
  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      redirect_to backend_customers_path ,notice: "Customer supprime"
    else
      redirect_to bakend_customer_controller(@customer), notice: "problem! Customer n'a pas ete suprrime"
        end
  end      
  
     def customer_params
  		params.require(:customer).permit(:email, :name , :company , :phone)
  	end
end
