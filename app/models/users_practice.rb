class UsersPractice < ActiveRecord::Base

	belongs_to :user
	belongs_to :practice

	validates_presence_of :user_id, :practice_id, :date

	scope :accomplished, ->(user) { where(user_id: user.id).length }
	scope :done_date, ->(user) { find_by(user_id: user.id).date }

end
