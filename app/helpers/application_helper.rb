module ApplicationHelper
	def get_current_user_nick
		current_user.email.split("@").first
	end
end
