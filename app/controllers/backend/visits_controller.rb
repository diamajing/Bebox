class Backend::VisitsController < BackendController
	def index
		@visits = Visit.order(created_at: :desc)
	end

	def new
		@visit = Visit.new
	end

	def create
		visit = Visit.new(visit_params)
		if visit.save
			redirect_to backend_visits_path, notice: 'Visite client a ete ajoutee'
		else
			render 'new', alert: "Une erreur s'est produite. Veuillez reessayer"
		end
	end

	private

	def visit_params
  		params.require(:visit).permit(:customer_name, :telephone , :location , :report)
  	end
end
