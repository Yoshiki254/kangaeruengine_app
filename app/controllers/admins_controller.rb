class AdminsController < ApplicationController

	before_filter :authenticate_admin!

	def show
		@admin = Admin.find(params[:id])
		@next_lessons = NextLesson.all
		no_appointments = NextLesson.students(@next_lessons)
		@forgotten_users = User.where(id: no_appointments).page(params[:forgotten_page]).per(6)		
		comingstudents_ids = NextLesson.coming(@next_lessons)
		@coming_users = User.includes([:next_lesson, :users_lessons, :users_interviews, :users_insights, :users_exams]).where(id: comingstudents_ids).order("next_lessons.date_time ASC").page(params[:user_page]).per(1)
		
		# @coming_users = User.joins(:next_lesson).where(id: comingstudents_ids).order("date_time ASC").page(params[:user_page]).per(6)
	end

	def search
	  @users = User.search(params[:search])
	end

end