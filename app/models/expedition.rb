class Expedition < ActiveRecord::Base

	has_many :users_expeditions
	has_many :users, through: :users_expeditions

	def done?(user)
		self.users_expeditions.exists?(user_id: user.id)
	end
	
	def date(user)
		self.users_expeditions.find_by(user_id: user.id).date
	end

end
