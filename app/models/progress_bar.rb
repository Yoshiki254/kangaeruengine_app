class ProgressBar
  include ActiveModel::Model

  def self.table_records(user)

    lessons = UsersLesson.accomplished(user)
  	interviews = UsersInterview.accomplished(user)
  	insights = UsersInsight.accomplished(user)
  	exams = UsersExam.accomplished(user)
  	practices = UsersPractice.accomplished(user)
  	expeditions = UsersExpedition.accomplished(user)
  	records = lessons + interviews + insights + exams + practices + expeditions
  	progress = (records.to_f / 39 * 100).to_i
  	return progress

  end

end