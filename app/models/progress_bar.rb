class ProgressBar
  include ActiveModel::Model

  def self.table_records(user)

    lessons = UsersLesson.where(user_id: user.id).length
  	interviews = UsersInterview.where(user_id: user.id).length
  	insights = UsersInsight.where(user_id: user.id).length
  	exams = UsersExam.where(user_id: user.id).length
  	practices = UsersPractice.where(user_id: user.id).length
  	expeditions = UsersExpedition.where(user_id: user.id).length
  	records = lessons + interviews + insights + exams + practices + expeditions
  	progress = (records.to_f / 39 * 100).to_i
  	return progress

  end

end