class ApplicationController < ActionController::Base
  protect_from_forgery
layout :compute_layout

def compute_layout
	"application"
end
end
