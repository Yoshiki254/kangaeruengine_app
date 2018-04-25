class UsersController < ApplicationController

	def show
		@lessons = Lesson.all
	end

end
