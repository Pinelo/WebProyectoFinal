class User < ActiveRecord::Base
	attr_accessor {}
	before_save { self.email = email.downcase }
	
	validates_format_of :email, with: /@/ 
	validates :telephone, length: {maximum: 11}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}

    validates :password, presence: true, length: { minimum: 6 }

   has_secure_password 
end
