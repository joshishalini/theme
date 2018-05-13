class DashboardController < ApplicationController
	layout "home"
	def index
		@roles = Role.all
		@users = User.all
	end
end
