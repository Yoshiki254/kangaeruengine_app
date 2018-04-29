class UsersLessonsController < ApplicationController

	def create
		UsersLesson.create(create_params)
		redirect_to :root
	end

	def edit
		@users_lesson = UsersLesson.find(params[:id])
		redirect_to :root
	end

	def update
		UsersLesson.update(update_params)
		redirect_to :root
	end

	private
	def create_params
		params.require(:users_lesson).permit(:date, :check, :lesson_id).merge(user_id: current_user.id)
	end

	def update_params
		params.require(:users_lesson).permit(:date, :check, :lesson_id).merge(user_id: current_user.id)
	end

end
