class Interview < ActiveRecord::Base

	has_many :users_interviews
	has_many :users, through: :users_interviews

	def done?(user)
		self.users_interviews.exists?(user_id: user.id)
	end

	def date(user)
		self.users_interviews.find_by(user_id: user.id).date
	end


end
