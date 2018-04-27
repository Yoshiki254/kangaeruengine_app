class UsersInterview < ActiveRecord::Base

	belongs_to :user
	belongs_to :interview

end
