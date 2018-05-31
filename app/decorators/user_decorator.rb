module UserDecorator

  def profile_notification
    unless self.full_profile?
      content_tag :h2, "まずは、あなたのプロフィールを登録しましょう！", class: "subtitle"
    end
  end

  def image_select
    # unless self.image.present?
    #   image_tag "#{self.image.url} + ?type=large" 
    # else 
      image_tag "#{self.image.url}"
    # end
  end

  def has_next_lesson
    if self.next_lesson.present?
      content_tag :p, self.next_lesson.datetime 
    else
      content_tag :p, "未決定"
    end
  end

  def has_lessons
    if self.users_lessons.present? 
      content_tag :p, self.last_lesson_name
    else
      content_tag :p, "未開始"
    end
  end

  def your_last_lesson
    if self.users_lessons.present? 
      content_tag :h3, self.last_lesson_name, class: "subtitle has-text-white is-italic has-text-weight-bold"
    else
      content_tag :h3, "未開始", class: "subtitle has-text-white is-italic has-text-weight-bold"
    end
  end


  def has_interviews
    if self.users_interviews.present?
      content_tag :p, self.last_interview_name
    else
      content_tag :p, "未開始"
    end
  end

  def has_insights
    if self.users_insights.present?
      content_tag :p, self.last_insight_name
    else
      content_tag :p, "未開始"
    end
  end

  def has_exams
    if self.users_exams.present?
      content_tag :p, self.last_exam_name
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
