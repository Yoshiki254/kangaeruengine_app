class Exam < ActiveRecord::Base

	has_many :users_exams
	has_many :users, through: :users_exams

	def done?(user)
		self.users_exams.exists?(user_id: user.id)
	end

	def date(user)
		self.users_exams.find_by(user_id: user.id).date
	end
end
