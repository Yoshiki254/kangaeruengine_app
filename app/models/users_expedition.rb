class UsersExpedition < ActiveRecord::Base

	belongs_to :user
	belongs_to :expedition

	validates_presence_of :user_id, :expedition_id, :date

end
