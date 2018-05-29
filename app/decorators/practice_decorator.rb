module PracticeDecorator

  def practice_date(user)
    self.users_practices.find_by(user_id: user.id).date
  end

end
