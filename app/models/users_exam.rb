class UsersExam < ActiveRecord::Base

	belongs_to :user
	belongs_to :exam

	validates_presence_of :user_id, :exam_id, :date

	delegate :name, to: :exam
	scope :accomplished, ->(user) { where(user_id: user.id).length }

end
