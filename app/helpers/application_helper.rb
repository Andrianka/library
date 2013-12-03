module ApplicationHelper
	def gravatar_url(user)
		default_url = "#{root_url}images/default.png"
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		"http://gravatar.com/avatar/#{gravatar_id}.png" 
	end
end
