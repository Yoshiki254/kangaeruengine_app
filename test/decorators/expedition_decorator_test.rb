require 'test_helper'

class ExpeditionDecoratorTest < ActiveSupport::TestCase
  def setup
    @expedition = Expedition.new.extend ExpeditionDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
