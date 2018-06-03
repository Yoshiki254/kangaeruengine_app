module LessonDecorator

  def lesson_date(user)
    self.users_lessons.find_by(user_id: user.id).date
  end

  def user_id(user)
    self.users.find_by(id: user.id) 
  end

  def display_title
    if self.id == 32
      content_tag :p, "4. 論点ロード", class: "subtitle is-size-5 has-text-centered"
    end
  end

  def lesson_of_user(user)
    lesson_of_user = self.users_lessons.find_by(user_id: user.id) 
    return lesson_of_user
  end

  def users_lesson_id(user)
    users_lesson_id = self.users_lessons.find_by(user_id: user.id).id
    return users_lesson_id
  end
  

end
