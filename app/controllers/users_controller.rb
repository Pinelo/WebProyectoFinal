class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		# debugger
	end

	def create
	    @user = User.new(user_params)    # Not the final implementation!
	    if @user.save
		 	flash[:success] = "Bienvenido"
	      	redirect_to @user
	    else
	      # render root_path
	    end
  	end

private

	def user_params
	  params.require(:user).permit(:email, :password, :password_confirmation)
		
	end

end