class UsersController < ApplicationController

	def show
		@lessons = Lesson.all
		@users_lesson = UsersLesson.new
	end



end
