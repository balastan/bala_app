class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user! #, :except => [:index]
layout :compute_layout
include ApplicationHelper
def compute_layout
	"application"
end


end
