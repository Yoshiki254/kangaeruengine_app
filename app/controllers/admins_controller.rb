class AdminsController < ApplicationController

	before_filter :authenticate_admin!

	def show
		@admin = Admin.find(params[:id])
		@users = User.includes([:next_lesson, :lessons, :users_lessons, :interviews, :users_interviews, :insights, :users_insights, :exams, :users_exams]).order("next_lessons.updated_at ASC").page(params[:page]).per(6)
		@no_nextlessons = NextLesson.neglected
	  @neglected_users = User.find[@no_nextlessons.user_id]
	end

	def search
	  @users = User.search(params[:search])
	end

end


