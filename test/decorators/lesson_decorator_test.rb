require 'test_helper'

class LessonDecoratorTest < ActiveSupport::TestCase
  def setup
    @lesson = Lesson.new.extend LessonDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
