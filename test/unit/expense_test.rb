require 'test_helper'

class ExpenseTest < Test::Unit::TestCase
  should_not allow_value("dfsfs").for(:amount)
  should validate_presence_of(:description)
  should_not allow_value("").for(:description)
  should validate_presence_of(:amount)
end
