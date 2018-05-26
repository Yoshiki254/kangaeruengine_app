class UsersInsight < ActiveRecord::Base

	belongs_to :user
	belongs_to :insight

	validates_presence_of :user_id, :insight_id, :date

	delegate :name, to: :insight
	scope :accomplished, ->(user) { where(user_id: user.id).length }

  def self.latest_name
	  self.order("created_at DESC").first.name
	end

end
