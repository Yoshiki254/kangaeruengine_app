module ExpeditionDecorator

  def expedition_date(user)
    self.users_expeditions.find_by(user_id: user.id).date
  end

  def find_instance(user)
    self.users_expeditions.find_by(user_id: user.id) 
  end

  def expedition_of_user(user)
    expedition_of_user = self.find_instance(user) 
    return expedition_of_user
  end

  def users_expedition_id(user)
    users_expedition_id = self.users_expeditions.find_by(user_id: user.id).id
    return users_expedition_id    
  end

end