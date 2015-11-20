class MeasurementsController < ApplicationController

	def update
	    @measurements = current_user.measurement
	    if @measurements.update_attributes(measurement_params)
	    	flash[:success] = "Profile updated"
		    redirect_to current_user
	      # Handle a successful update.
	    else
	    	flash[:failure] = "Profile could not be updated"
	      redirect_to current_user
	    end
  	end

  	private
	
	def measurement_params
		params.require(:measurement).permit(:neck, :chest, :shoulder, :right_sleeve, :left_sleeve, :waist, :hips, :half_back, :full_back, 
	  		:knee, :trouser_waist, :trouser_outsean, :trouser_inseam, :thigh, :crotch)
	end
  	

end