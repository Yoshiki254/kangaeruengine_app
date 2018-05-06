class NextLesson < ActiveRecord::Base

	belongs_to :user

	validates_presence_of :user_id, :date_time

end
