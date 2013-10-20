module SessionsHelper
	#assigning signin user as current user
	def sign_in(user)
		#current_user(user)
		self.current_user = user
		#@current_user = user
	end

	#rails way of assigning user to current user
	def current_user=(user)
		@current_user = user
	end

	#returns current user
	def current_user
		#p 'inside current_user**********'+@current_user
		@current_user
	end

	def signed_in?
		!current_user.nil?
	end

end
