class UsersInsight < ActiveRecord::Base

	belongs_to :user
	belongs_to :insight

	validates_presence_of :user_id, :insight_id, :date

end
