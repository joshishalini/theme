class RolesController < ApplicationController

	layout "home"
	
	def index
		@roles = Role.all
	end

	def new
		@role = Role.new
	end

	def edit
		@role = Role.find(params[:id])
	end

	def show
		@role = Role.find(params[:id])
	end

	def create
		@role = Role.new(role_params)
	  if @role.save
	  	redirect_to roles_path
	  else
	  	p "=============error!============="
			p @role.errors.full_messages.join(', ')
		end
	end

	def update
		@role = Role.find(params[:id])
	  if @role = @role.update(role_params)
	  	redirect_to @role
	  else
	  	p "=============error!============="
			p @role.errors.full_messages.join(', ')
		end
	end

	def destroy
		@role = Role.find(params[:id])
		if @role.destroy
			redirect_to roles_path
		else
			p "=============error!============="
			p @role.errors.full_messages.join(', ')
		end			
	end

	private
		def role_params
			params.require(:role).permit(:role_name)
		end

end
