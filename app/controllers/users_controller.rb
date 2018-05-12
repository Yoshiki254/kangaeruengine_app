class UsersController < ApplicationController
	before_action :authenticate_user!

	def show

		unless current_user.full_profile?
			redirect_to edit_user_path(current_user)
		else
			user_path(current_user)
		end

		@progress = ProgressBar.table_records(current_user)

		@user = User.find(params[:id])

		@lessons = Lesson.includes(:users_lessons)
		@users_lesson = UsersLesson.new

		@interviews = Interview.includes(:users_interviews)
		@users_interview = UsersInterview.new

		@insights = Insight.includes(:users_insights)
		@users_insight = UsersInsight.new

		@exams = Exam.includes(:users_exams)
		@users_exam = UsersExam.new

		@next_lesson = NextLesson.new

		@practices = Practice.includes(:users_practices)
		@users_practice = UsersPractice.new

		@expeditions = Expedition.includes(:users_expeditions)
		@users_expedition = UsersExpedition.new
	end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	respond_to do |format|
      if current_user.update(update_params)
        format.html { redirect_to user_path(current_user), notice: 'ユーザー情報が正しく登録されました' }
      else
        format.html { redirect_to edit_user_path(current_user) }
      end
    end
  end

  private
  def update_params
  	params.require(:user).permit(:name, :name_kana, :birthday, :tel, :job, :avatar)
  end

end



