class UsersInterviewsController < ApplicationController

	def create
		@users_interview = UsersInterview.new(create_params)

    if current_user
      respond_to do |format|
        if @users_interview.save
          format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
         #  format.json { render action: 'create', status: :created, location: @users_interview }
        	# format.js   { render action: 'create', status: :created, location: @users_interview }
        else
          format.html { redirect_to user_path(current_user) }
          # format.json { render json: @users_interview.errors, status: :unprocessable_entity }
          # format.js   { render json: @users_interview.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        if @users_interview.save
          format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully created.' }
          # format.json { render action: 'create', status: :created, location: @users_lesson }
          # format.js   { render action: 'create', status: :created, location: @users_lesson }
        else
          format.html { redirect_to admins_user_path(params[:user_id]) }
          # format.json { render json: @users_lesson.errors, status: :unprocessable_entity }
          # format.js   { render json: @users_lesson.errors, status: :unprocessable_entity }
        end
      end
    end
	end

	private
	def create_params
		params.require(:users_interview).permit(:date, :check, :interview_id).merge(user_id: params[:user_id])
	end


end
