class UserMailer < ApplicationMailer

	# a donde se enviaran los correos
	def admin_mail
		"pinelo93@gmail.com"
	end

	def contact_mail(user, email, message)
	    @user = user
	    @email = email
	    @message = message
	    @url  = 'http://example.com/login'
	    mail(to: admin_mail, subject: "I'd like to set up a meeting.", from: email)
	end
end
