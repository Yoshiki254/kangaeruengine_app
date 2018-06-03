module InsightDecorator

  def insight_date(user)
    self.users_insights.find_by(user_id: user.id).date
  end

  def insight_of_user(user)
    insight_of_user = self.users_insights.find_by(user_id: user.id) 
    return insight_of_user
  end

  def users_insight_id(user)
    users_insight_id = self.users_insights.find_by(user_id: user.id).id
    return users_insight_id    
  end

end
