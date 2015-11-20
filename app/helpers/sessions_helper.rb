module SessionsHelper

	def log_in(user)
    	session[:user_id] = user.id
      if session[:cart].blank?
        session[:cart] = Array.new
      end
  	end

    def remember(user)
      user.remember
      cookies.permanent.signed[:user_id] = user.id
      cookies.permanent[:remember_token] = user.remember_token
    end

  	def current_user
	    @current_user ||= User.find_by(id: session[:user_id])
  	end

  	def logged_in?
    	!current_user.nil?
  	end

  	def log_out
    	session.delete(:user_id)
    	@current_user = nil
  	end

    def add_to_cart(suit)
      if has_suit?(suit)
        suit_index = find_suit(suit)
        session[:cart][suit_index][:quantity] = session[:cart][suit_index][:quantity] + 1
      else
        session[:cart] << {key: suit, quantity: 1}
      end
    end


    private

    def find_suit(suit_id)
      cookes[:cart].each_with_index do |suit, i|
        return i if suit[:key] == suit_id
      end
      return -1
    end

      def has_suit?(suit_id)
        session[:cart].each do |suit| 
          return true if suit[:key] = suit_id
        end
        return false
      end
  	
end
