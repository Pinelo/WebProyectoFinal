class UsersController < ApplicationController


	def show
		redirect_to root_path unless logged_in? 
		@user = User.find(params[:id])
		# debugger
	end

	def create
	    @user = User.new(user_params)    # Not the final implementation!
	    if @user.save
	    	@user.create_mesurement
		 	flash[:success] = "Bienvenido"
	      	redirect_to @user
	    else
	      # render root_path
	    end
  	end

  	def update
	    @user = User.find(params[:id])
	    if @user.update_attributes(user_params)
	    	flash[:success] = "Profile updated"
		    redirect_to @user
	      # Handle a successful update.
	    else
	      redirect_to @user
	    end
  	end

private

	def user_params
	  params.require(:user).permit(:email, :password, :password_confirmation, :telephone, :address)
	end

end