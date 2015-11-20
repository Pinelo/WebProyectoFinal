class StaticController < ApplicationController
	def index
		
	end

	def fabrics
		
	end

	def contact
		
	end

	def about
		
	end

	def collection
		redirect_to root_path unless logged_in? 
	end
end