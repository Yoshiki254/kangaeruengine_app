require 'test_helper'

class UsersLessonDecoratorTest < ActiveSupport::TestCase
  def setup
    @users_lesson = UsersLesson.new.extend UsersLessonDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
