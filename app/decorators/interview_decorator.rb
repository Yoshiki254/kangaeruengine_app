module InterviewDecorator

  def interview_date(user)
    self.users_interviews.find_by(user_id: user.id).date
  end

end
