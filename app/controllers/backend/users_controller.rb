class Backend::UsersController < BackendController
	def index
		@users = User.all
	end	
end
