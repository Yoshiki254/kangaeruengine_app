class UsersLessonsController < ApplicationController

	def create
		UsersLesson.create(date_params)
		redirect_to :root
	end

	private
	def date_params
		params.require(:users_lesson).permit(:date, :check, :lesson_id).merge(user_id: current_user.id)
	end

end
