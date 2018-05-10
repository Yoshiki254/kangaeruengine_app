class UsersInsightsController < ApplicationController

	def create
		@users_insight = UsersInsight.new(create_params)
    respond_to do |format|
      if @users_insight.save
        format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        format.json { render action: 'create', status: :created, location: @users_insight }
      	format.js   { render action: 'create', status: :created, location: @users_insight }
      else
        format.html { redirect_to user_path(current_user) }
        format.json { render json: @users_interview.errors, status: :unprocessable_entity }
        format.js   { render json: @users_interview.errors, status: :unprocessable_entity }
      end
    end
	end

	private
	def create_params
		params.require(:users_insight).permit(:date, :check, :insight_id).merge(user_id: current_user.id)
	end

end
