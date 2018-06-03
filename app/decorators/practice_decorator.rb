module PracticeDecorator

  def practice_date(user)
    self.users_practices.find_by(user_id: user.id).date
  end

  def practice_of_user(user)
    practice_of_user = self.users_practices.find_by(user_id: user.id) 
    return practice_of_user
  end

  def users_practice_id(user)
    users_practice_id = self.users_practices.find_by(user_id: user.id).id
    return users_practice_id    
  end

end
