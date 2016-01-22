module UserSessionsHelper
	private
	def loginCheck
		flash.notice = "Must be logged in!" if !logged_in?
	end
end
