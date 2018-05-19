class AdminsUsersController < ApplicationController
	before_filter :authenticate_admin!

	def show
		@user = User.find(params[:id])

		@progress = ProgressBar.table_records(@user)

		@lessons = Lesson.includes(:users_lessons)
		@users_lesson = UsersLesson.new

		@interviews = Interview.includes(:users_interviews)
		@users_interview = UsersInterview.new

		@insights = Insight.includes(:users_insights)
		@users_insight = UsersInsight.new

		@exams = Exam.includes(:users_exams)
		@users_exam = UsersExam.new

		@next_lesson = NextLesson.new

		@practices = Practice.includes(:users_practices)
		@users_practice = UsersPractice.new

		@expeditions = Expedition.includes(:users_expeditions)
		@users_expedition = UsersExpedition.new
	end

end
