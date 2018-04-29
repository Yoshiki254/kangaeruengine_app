class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@lessons = Lesson.includes(:users_lessons).all
		@users_lesson = UsersLesson.new
		@interviews = Interview.includes(:users_interviews).all
		@users_interview = UsersInterview.new
		@insights = Insight.includes(:users_insights).all
		@users_insight = UsersInsight.new
	end

	def update
		current_user.update(datetime_params)
		redirect_to :root and return
	end

	private
	def datetime_params
		params.require(:user).permit(:next_lesson)
	end


end
