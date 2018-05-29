class UsersLesson < ActiveRecord::Base

	belongs_to :user
	belongs_to :lesson

	validates_presence_of :user_id, :lesson_id, :date

	delegate :name, to: :lesson
	scope :accomplished, ->(user) { where(user_id: user.id).length }

end
