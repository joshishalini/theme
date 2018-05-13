class UsersController < ApplicationController	

	layout "home"
	def index
		@users = User.all
	end

	def new
		@user = User.new
		@roles = Role.all
	end

	def edit
		@user = User.find(params[:id])
		@roles = Role.all
	end

	def create
		@user = User.new(user_params)
	  if @user.save
	  	redirect_to @user
	  else
	  	p "=============error!============="
			p @user.errors.full_messages.join(', ')
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render 'edit'
			p "=============error!============="
			p @user.errors.full_messages.join(', ')
		end		
	end

	private
		def user_params
			p "-------------------"
			params.require(:user).permit(:name,role_users_attributes: [:id, :user_id,:role_id, :_destroy ])
		end

end	
