class Backend::InterventionsController < BackendController

	def new
		@maintenance = Maintenance.find(session[:maintenance])
		@intervention = Intervention.new
	end

	def create
		@intervention = Intervention.new(intervention_params)
		if @intervention.save
			redirect_to new_backend_intervention_path, notice: "Intervention ajoute"
		else 
			redirect_to new_backend_intervention_path, alert: "L'intervention n'a pas ete ajoute"
		end
	end
    
    def destroy
        intervention = Intervention.find(params[:id])
        maintenance = intervention.maintenance
        if intervention.destroy
          redirect_to backend_maintenance_path(maintenance) ,notice: "Intervention supprime"
        end
    end

  private   

  	def intervention_params
  		params.require(:intervention).permit(:action, :part_id , :maintenance_id)
  	end
end
