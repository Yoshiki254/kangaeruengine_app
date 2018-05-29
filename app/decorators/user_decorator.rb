module UserDecorator

  def has_next_lesson(user)
    if user.next_lesson.present?
      content_tag :p, user.next_lesson.datetime 
    else
      content_tag :p, "未決定"
    end
  end

  def has_lessons(user)
    if user.users_lessons.present? 
      content_tag :p, user.last_lesson_name
    else
      content_tag :p, "未開始"
    end
  end

  def your_last_lesson(user)
    if user.users_lessons.present? 
      content_tag :h3, user.last_lesson_name, class: "subtitle has-text-white is-italic has-text-weight-bold"
    else
      content_tag :h3, "未開始", class: "subtitle has-text-white is-italic has-text-weight-bold"
    end
  end


  def has_interviews(user)
    if self.users_interviews.present?
      content_tag :p, user.last_interview_name
    else
      content_tag :p, "未開始"
    end
  end

  def has_insights(user)
    if self.users_insights.present?
      content_tag :p, user.last_insight_name
    else
      content_tag :p, "未開始"
    end
  end

  def has_exams(user)
    if self.users_exams.present?
      content_tag :p, user.last_exam_name
    else
      content_tag :p, "未受験"
    end
  end

  def last_lesson_name
    self.users_lessons.order("created_at DESC").first.name
  end

  def last_interview_name
    self.users_interviews.order("created_at DESC").first.name
  end

  def last_insight_name
    self.users_insights.order("created_at DESC").first.name
  end

  def last_exam_name
    self.users_exams.order("created_at DESC").first.name
  end

end
