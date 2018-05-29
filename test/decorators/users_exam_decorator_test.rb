require 'test_helper'

class UsersExamDecoratorTest < ActiveSupport::TestCase
  def setup
    @users_exam = UsersExam.new.extend UsersExamDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
