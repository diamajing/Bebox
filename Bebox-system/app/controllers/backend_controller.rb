class BackendController < ApplicationController
	layout "backend"

	def index
    	@maintenances = []
    	beboxes = Bebox.all
    	beboxes.each do |bebox|
    		t = Time.now - 24.hours  
    		puts t
    		if bebox.maintenances.last.present?
	    		if t > bebox.maintenances.last.created_at
	    			puts bebox.reference
	    			@maintenances.push(bebox) 
	    		end
    		end
    	end
	end
end
