class Backend::BeboxsController < BackendController
       
    def index
    	@bebox = Bebox.order(created_at: :desc)
    end
     
    def create
     @bebox = Bebox.new(bebox_params)
     if @bebox.save
        redirect_to  backend_beboxs_path ,notice: "bebox Ajouter"
     else
        
      redirect_to new_backend_bebox
        end 
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
    
    def edit_date
        @bebox = Bebox.find(params[:id])
    end

    def update
        @bebox = Bebox.find(params[:id])
        if @bebox.update(bebox_params)
            redirect_to backend_bebox_path(@bebox) ,notice: "Bebox mise a jour"
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
  		params.require(:bebox).permit(:reference, :location , :longitude , :laltitude , :category , :customer_id, :price, :created_at)
  	end
end
