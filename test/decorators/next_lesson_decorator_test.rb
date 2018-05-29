require 'test_helper'

class NextLessonDecoratorTest < ActiveSupport::TestCase
  def setup
    @next_lesson = NextLesson.new.extend NextLessonDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
