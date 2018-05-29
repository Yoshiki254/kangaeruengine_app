require 'test_helper'

class ExamDecoratorTest < ActiveSupport::TestCase
  def setup
    @exam = Exam.new.extend ExamDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
