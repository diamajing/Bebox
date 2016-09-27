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
        if @maintenances.category == 'telephone'
          render 'note'
        else
          session[:maintenance] = @maintenances.id
          redirect_to new_backend_intervention_path(@maintenance)
       end
     else
        redirect_to backend_maintenances_path, alert: "Une erruer s'est produite, la maintenace n'a pas ete ajouter"
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

  def note(maintenance)
    @maintenances = maintenance
  end

  private   

  def maintenances_params
		params.require(:maintenance).permit(:category, :bebox_id , :note)
	end

end
