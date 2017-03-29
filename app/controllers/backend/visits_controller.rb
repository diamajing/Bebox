class Backend::VisitsController < BackendController
	def index
		@visits = Visit.order(created_at: :desc)
	end
end
