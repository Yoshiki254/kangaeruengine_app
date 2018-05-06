class AdminsController < ApplicationController

	before_filter :authenticate_admin!

	def show
		@admin = Admin.find(params[:id])
		@users = User.includes([:lessons, :users_lessons, :interviews, :users_interviews, :insights, :users_insights, :exams, :users_exams])
	end

	def search
	 	@users = User.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
	end

end
