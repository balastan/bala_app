class LoginController < ApplicationController
	layout :compute_layout

	def index
		redirect_to new_user_session_path # :controller => 'devise/sessions', :action => 'new'
		#user_session_path
		#new_user_session_path
	end




end
