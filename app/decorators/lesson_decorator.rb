module LessonDecorator

  def lesson_date(user)
    self.users_lessons.find_by(user_id: user.id).date
  end

  def user_id(user)
    self.users.find_by(id: user.id) 
  end

  def display_title
    if self.id == 5
      content_tag :p, "4. 論点ロード", class: "subtitle is-size-5 has-text-centered"
    end
  end

end
