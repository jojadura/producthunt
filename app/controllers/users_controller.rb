class UsersController < ApplicationController

	#new y create, fueron los que se especificaron en routes.rb, los cuales deben ser creados en el controller, en este caso users

	def new
		@user = User.new	
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end


	private 
	def user_params
		params.require(:user).permit(:email, :password, :name, :twitter_handle)
		
	end
end
