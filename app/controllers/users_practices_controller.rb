class UsersPracticesController < ApplicationController

	def create
		@users_practice = UsersPractice.new(create_params)
    respond_to do |format|
      if @users_practice.save
        format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        format.json { render action: 'create', status: :created, location: @users_practice }
      	format.js   { render action: 'create', status: :created, location: @users_practice }
      else
        format.html { redirect_to user_path(current_user) }
        format.json { render json: @users_practice.errors, status: :unprocessable_entity }
        format.js   { render json: @users_practice.errors, status: :unprocessable_entity }
      end
    end
	end

	private
	def create_params
		params.require(:users_practice).permit(:date, :check, :practice_id).merge(user_id: current_user.id)
	end


end
