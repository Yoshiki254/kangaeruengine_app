class Exam < ActiveRecord::Base

	has_many :users_exams
	has_many :users, through: :users_exams

end
