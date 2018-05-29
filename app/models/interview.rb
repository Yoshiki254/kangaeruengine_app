class Interview < ActiveRecord::Base

	has_many :users_interviews
	has_many :users, through: :users_interviews

end
