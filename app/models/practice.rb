class Practice < ActiveRecord::Base

	has_many :users_practices
	has_many :users, through: :users_practices

end
