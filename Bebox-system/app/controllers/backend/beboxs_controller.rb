class Backend::BeboxsController < BackendController
  def index
  	@bebox = Bebox.all
  end
  def new
  @bebox = Bebox.new 
   end 
  
  def show
  	@bebox = Bebox.find(params[:id])
  end

  def edit
  	@bebox = Bebox.find(params[:id])
  end
   def update
      @bebox = Bebox.find(params[:id])
      if @bebox.update(bebox_params)
      redirect_to backend_beboxs_path ,notice: "Bebox mise a jour"
      end 
     end   
  def destroy
    @bebox = Bebox.find(params[:id])
    if @bebox.destroy
      redirect_to backend_beboxs_path ,notice: "Bebox supprime"
    else
      redirect_to bakend_bebox_controller(@bebox), notice: "problem! Bebox n'a pas ete suprrime"
        end
  end      
  
     def bebox_params
  		params.require(:bebox).permit(:reference, :location , :category , :customer_id)
  	end
end
