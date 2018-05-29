require 'test_helper'

class AdminDecoratorTest < ActiveSupport::TestCase
  def setup
    @admin = Admin.new.extend AdminDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
