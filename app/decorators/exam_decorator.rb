module ExamDecorator

  # def has_exam(user, users_exam, exam, i)
  #   if self.users_exams.exists?(user_id: user.id)
  #     content_tag(:div) do
  #       concat content_tag(:div, "#{exam_date(user)}", class: "subtitle is-size-5 has-text-link has-text-centered")
  #       concat content_tag(:div)
  #     end

  #   else
  #     render partial: "users/examModal", locals: { user: user, users_exam: users_exam, exam: exam, i: i }
  #   end
  # end

  def exam_date(user)
    self.users_exams.find_by(user_id: user.id).date
  end

  def exam_of_user(user)
    exam_of_user = self.users_exams.find_by(user_id: user.id) 
    return exam_of_user
  end
  
  def users_exam_id(user)
    users_exam_id = self.users_exams.find_by(user_id: user.id).id
    return users_exam_id    
  end

  
end
