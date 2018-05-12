class UsersLessonsController < ApplicationController

	def create
		# UsersLesson.create(create_params)
		@users_lesson = UsersLesson.new(create_params)
     respond_to do |format|
      if @users_lesson.save
        format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        format.json { render action: 'create', status: :created, location: @users_lesson }
      	format.js   { render action: 'create', status: :created, location: @users_lesson }
      else
        format.html { redirect_to user_path(current_user) }
        format.json { render json: @users_lesson.errors, status: :unprocessable_entity }
        format.js   { render json: @users_lesson.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to user_path(current_user)
	end

	private
	def create_params
		params.require(:users_lesson).permit(:date, :check, :lesson_id).merge(user_id: current_user.id)
	end

end




