class UsersInterviewsController < ApplicationController

	def create
		UsersInterview.create(create_params)
		redirect_to :root
	end

	private
	def create_params
		params.require(:users_interview).permit(:date, :check, :interview_id).merge(user_id: current_user.id)
	end


end
