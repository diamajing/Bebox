class Backend::MaintenancesController < BackendController
  def new
  	@maintenances = Maintenance.new
  end
  def index
  	@maintenances = Maintenance.all
  end
  def create
     @maintenances = Maintenance.new(maintenances_params)
     if @maintenances.save
        redirect_to  backend_maintenances_path ,notice: "maintenances Ajouter"
     else
        
      redirect_to new_backend_customer
        end 
    end 
  def edit
  	@maintenances = Maintenance.find(params[:id])
  end

  def show
  	@maintenances = Maintenance.find(params[:id])
  end

  def destroy
    @maintenances = Maintenance.find(params[:id])
    if @maintenances.destroy
      redirect_to backend_maintenances_path ,notice: "Maintenances supprime"
    
        end
  end 

  def update
      @maintenances = Maintenance.find(params[:id])
      if @maintenances.update(maintenances_params)
      redirect_to backend_maintenances_path ,notice: "Maintenances mise a jour"
      end 
     end  
          
  def maintenances_params
  		params.require(:maintenance).permit(:category, :bebox_id , :note)
  	end
end
