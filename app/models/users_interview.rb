class UsersInterview < ActiveRecord::Base

	belongs_to :user
	belongs_to :interview

	validates_presence_of :user_id, :interview_id, :date

	delegate :name, to: :interview
	scope :accomplished, ->(user) { where(user_id: user.id).length }

	def self.latest_name
	  self.order("created_at DESC").first.name
	end

end
