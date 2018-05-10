class UsersExamsController < ApplicationController

	def create
		@users_exam = UsersExam.new(create_params)
    respond_to do |format|
      if @users_exam.save
        format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        format.json { render action: 'create', status: :created, location: @users_exam }
      	format.js   { render action: 'create', status: :created, location: @users_exam }
      else
        format.html { redirect_to user_path(current_user) }
        format.json { render json: @users_exam.errors, status: :unprocessable_entity }
        format.js   { render json: @users_exam.errors, status: :unprocessable_entity }
      end
    end
	end

	private
	def create_params
		params.require(:users_exam).permit(:date, :check, :exam_id).merge(user_id: current_user.id)
	end


end
