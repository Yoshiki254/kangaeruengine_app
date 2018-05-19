class NextLesson < ActiveRecord::Base

	belongs_to :user
	validates_presence_of :user_id, :date_time

  # def neglected
  # 	require "date"

  #     d1 = Date.today #今日の日付
  #     d2 = Date.parse(appointed_date) #引数で持ってくる

  # 	if d1 - d2 > 0
  	  
  # 	else
  # 	end
  # end

  # def appointed_dates
  # 	appointed_dates = self.select.date_time
  # end

end
