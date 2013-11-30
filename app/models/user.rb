class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	validates :password, length: {minimum: 6}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, uniqueness: {case_sensitive: false}, presence: true,
						format: { with: VALID_EMAIL_REGEX } 
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_one :address
	has_secure_password

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end	
end

