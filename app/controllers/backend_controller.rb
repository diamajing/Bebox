class BackendController < ApplicationController
	layout "backend"
    #http_basic_authenticate_with name: "info@mybebox.tn", password: "beboxkey"
    before_action :authenticate_user!

	def index
        @maintenances= Maintenance.where(todo: "1").all
    	@tocall = []
    	beboxes = Bebox.all
    	beboxes.each do |bebox|
    		t = Time.now - 720.hours  
    		puts t
    		if bebox.maintenances.last.present?
	    		if t > bebox.maintenances.last.created_at
	    			@tocall.push(bebox) 
	    		end
            else
                if t > bebox.created_at
                    @tocall.push(bebox)
                end
    		end
    	end
	end
    
    
    def ineventory
    end
end
