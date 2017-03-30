class Backend::VisitsController < BackendController
	def index
		@visits = Visit.order(created_at: :desc)
	end

	def new
		@visit = Visit.new
	end
	
	def show
    	@visits = Visit.find(params[:id])
    end

	def create
		visit = Visit.new(visit_params)
		if visit.save
			redirect_to backend_visits_path, notice: 'Visite client a ete ajoutee'
		else
			render 'new', alert: "Une erreur s'est produite. Veuillez reessayer"
		end
	end

	def edit
		@visits = Visit.find(params[:id])
	end

	def update
      @visits = Visit.find(params[:id])
      if @visits.update(visit_params)
      	redirect_to backend_visit_path(@visits) ,notice: "visit client  mise a jour"
      else
        redirect_to backend_visit_path(@visits) , alert: " erreur veuillez ressayez"
      end 
    end 

    def destroy
    	@visits = Visit.find(params[:id])
   		if @visits.destroy
      		redirect_to backend_visits_path ,notice: "visit client supprime"
  		else
            redirect_to backend_visit_path(@visits) , alert:"erreur veuillez ressayez"  
        end
  end

	private

	def visit_params
  		params.require(:visit).permit(:customer_name, :telephone , :location , :report, :user_id)
  	end
end
