class UsersExamsController < ApplicationController

	def create
		UsersExam.create(create_params)
		redirect_to user_path(current_user.id)
	end

	private
	def create_params
		params.require(:users_exam).permit(:date, :check, :exam_id).merge(user_id: current_user.id)
	end


end
