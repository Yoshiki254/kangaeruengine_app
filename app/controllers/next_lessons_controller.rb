class NextLessonsController < ApplicationController


	def create
		NextLesson.create(create_params)
		redirect_to user_path(current_user)
	end

	def edit
		@next_lesson = NextLesson.find(params[:id])
	end

	def update
		@next_lesson = NextLesson.find(params[:id])
		@next_lesson.update(update_params)
		redirect_to user_path(current_user) and return
	end

	private
	def create_params
		params.require(:next_lesson).permit(:date_time).merge(user_id: current_user.id)
	end

	def update_params
		params.require(:next_lesson).permit(:date_time).merge(user_id: current_user.id)
	end

end
