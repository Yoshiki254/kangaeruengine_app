module ExpeditionDecorator

  def expedition_date(user)
    self.users_expeditions.find_by(user_id: user.id).date
  end

end
