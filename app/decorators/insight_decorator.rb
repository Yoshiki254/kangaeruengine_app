module InsightDecorator

  def insight_date(user)
    self.users_insights.find_by(user_id: user.id).date
  end

end
