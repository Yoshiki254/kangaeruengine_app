class Insight < ActiveRecord::Base

	has_many :users_insights
	has_many :users, through: :users_insights

	def done?(user)
		self.users_insights.exists?(user_id: user.id)
	end

	def date(user)
		self.users_insights.find_by(user_id: user.id).date
	end
end
