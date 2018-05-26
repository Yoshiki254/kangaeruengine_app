class Practice < ActiveRecord::Base

	has_many :users_practices
	has_many :users, through: :users_practices

	def done?(user)
		self.users_practices.exists?(user_id: user.id)
	end

	def date(user)
		self.users_practices.find_by(user_id: user.id).date
	end

end
