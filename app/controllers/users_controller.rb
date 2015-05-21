class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create user_params
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:name,:email, :password, :role)
	end
end
