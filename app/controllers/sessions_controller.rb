class SessionsController < ApplicationController
  # def new
  # end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	log_in user
    	redirect_to user
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' 
      redirect_to root_path
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def addSuit
    respond_to do |format|
      format.js {
        add_to_cart params[:suit_id]
        @suit_hash = session[:cart][find_suit(params[:suit_id])]
        @suit_key = @suit_hash[:key]
        if @suit_key == nil
          @suit_key = @suit_hash["key"]  
        end
        @suit_qty = @suit_hash[:quantity]
        if @suit_qty == nil
          @suit_qty = @suit_hash["quantity"]
        end
      }

      format.html {
      }
    end
  end


end
