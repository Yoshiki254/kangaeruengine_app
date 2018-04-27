class Insight < ActiveRecord::Base

	has_many :users_insights
	has_many :users, through: :users_insights

end
