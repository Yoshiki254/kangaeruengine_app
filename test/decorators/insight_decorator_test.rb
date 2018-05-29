require 'test_helper'

class InsightDecoratorTest < ActiveSupport::TestCase
  def setup
    @insight = Insight.new.extend InsightDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
