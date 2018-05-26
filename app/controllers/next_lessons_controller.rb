class NextLessonsController < ApplicationController


	def create
		@next_lesson = NextLesson.create(create_params)
		if current_user
		  redirect_to user_path(current_user)
		else
			redirect_to admins_user_path(params[:user_id])
		end
	end

	def edit
		@next_lesson = NextLesson.find(params[:id])
	end

	def update
		@next_lesson = NextLesson.find(params[:id])
		@next_lesson.update(update_params)
		if current_user
		  redirect_to user_path(current_user)
		else
			redirect_to admins_user_path(params[:user_id])
		end

	end

	private
	def create_params
		params.require(:next_lesson).permit(:date_time).merge(user_id: params[:user_id])
	end

	def update_params
		params.require(:next_lesson).permit(:date_time).merge(user_id: params[:user_id])	
	end

end
