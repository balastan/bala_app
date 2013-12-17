module ApplicationHelper

def current_user_id
	return session["warden.user.user.key"][1]
end

end
