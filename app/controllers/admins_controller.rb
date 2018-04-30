class AdminsController < ApplicationController

	before_filter :authenticate_admin!

	def show
		@admin = Admin.find(params[:id])
		@users = User.all
	end

	def search
	 	@users = User.where('name LIKE(?)',"%#{params[:keyword]}%").limit(20)
	end

end
