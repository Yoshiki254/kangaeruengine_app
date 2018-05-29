class NextLesson < ActiveRecord::Base

	belongs_to :user
	validates_presence_of :user_id, :date_time

  def self.students(next_lessons)
    no_appointments = []
    
    next_lessons.each do |next_lesson|
      require "date"
      if next_lesson.date_time < Date.yesterday && next_lesson.updated_at > Date.today.months_ago(2)
        no_appointments << next_lesson.user_id
      end
    end
    return no_appointments
  end

  def self.coming(next_lessons)
    comingstudents_ids = []

    next_lessons.each do |next_lesson|
      require "date"
      if next_lesson.date_time < Date.today + 7.day && next_lesson.date_time > Date.yesterday
        comingstudents_ids << next_lesson.user_id
      end
    end
    return comingstudents_ids
  end

end
