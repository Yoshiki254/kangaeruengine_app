class Lesson < ActiveRecord::Base

	has_many :users_lessons
	has_many :users, through: :users_lessons


end
