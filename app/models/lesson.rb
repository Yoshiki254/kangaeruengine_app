class Lesson < ActiveRecord::Base

	has_many :users_lessons
	has_many :users, through: :users_lessons

	def done?(user)
		self.users_lessons.exists?(user_id: user.id)
	end

	def date(user)
		self.users_lessons.find_by(user_id: user.id).date
	end

	# def line
	# 	if self.id == 5
			
	# 		line <<-EOS
  #     <p class='subtitle is-size-5 has-text-centered'>4. 論点ロード</p>

  #     EOS
	# 		line
	# 	end
	# end

end
