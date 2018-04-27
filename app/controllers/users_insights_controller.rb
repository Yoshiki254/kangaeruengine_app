class UsersInsightsController < ApplicationController

	def create
		UsersInsight.create(create_params)
		redirect_to :root
	end

	private
	def create_params
		params.require(:users_insight).permit(:date, :check, :insight_id).merge(user_id: current_user.id)
	end

end
