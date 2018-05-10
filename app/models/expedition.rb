class Expedition < ActiveRecord::Base

	has_many :users_expeditions
	has_many :users, through: :users_expeditions

end
