class User < ActiveRecord::Base
	has_many :swits
	has_many :comments
	before_create :create_remember_token
	validates :username, length: { minimum: 4 }, presence: true, uniqueness: true
	validates :password, confirmation: true, presence: true, length: {minimum: 6}

	has_secure_password

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

	def create_remember_token
		self.remember_token = User.digest(User.new_remember_token)
	end
end
