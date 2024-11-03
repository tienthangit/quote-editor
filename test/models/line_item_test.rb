require "test_helper"

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # 

  test "#total_price returns the total price of the line item" do
    assert_equal 250, line_items(:catering_today).total_price
  end

  test "#total_price returns the sum of the total price of all line items" do
    assert_equal 2500, quotes(:first).total_price
  end
end
