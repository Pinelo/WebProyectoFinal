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

	def mail_request
		# WORKS, BUT IT NEEDS AN EMAIL AND PASSWORD IN development.rb TO USE AS MAIL SENDER 
  		UserMailer.contact_mail(params[:name], params[:email], params[:message]).deliver_now
  		redirect_to contact_path
  	end
end