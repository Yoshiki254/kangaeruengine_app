class UsersPractice < ActiveRecord::Base

	belongs_to :user
	belongs_to :practice

	validates_presence_of :user_id, :practice_id, :date


end
