class UsersController < ApplicationController

	def show
		@lessons = Lesson.all
		@users_lesson = UsersLesson.new
		@interviews = Interview.all
		@users_interview = UsersInterview.new
		@insights = Insight.all
		@users_insight = UsersInsight.new
	end

end
