require 'test_helper'

class ExpenseTest < Test::Unit::TestCase
  should_not allow_value("dfsfs").for(:amount)

end
