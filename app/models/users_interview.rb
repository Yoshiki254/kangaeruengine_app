class UsersInterview < ActiveRecord::Base

	belongs_to :user
	belongs_to :interview

	validates_presence_of :user_id, :interview_id, :date

end
