module NextLessonDecorator

  include UserDecorator

  def datetime
    date_time.strftime("%Y-%m-%d %H:%M")
  end

end
