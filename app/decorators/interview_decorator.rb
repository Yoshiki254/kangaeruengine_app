module InterviewDecorator

  def interview_date(user)
    self.users_interviews.find_by(user_id: user.id).date
  end

  def interview_of_user(user)
    users_interview_of_user = self.users_interviews.find_by(user_id: user.id) 
    return users_interview_of_user
  end

  def users_interview_id(user)
    users_interview_id = self.users_interviews.find_by(user_id: user.id).id
    return users_interview_id    
  end


end
