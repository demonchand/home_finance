require 'test_helper'

class SavingTest < Test::Unit::TestCase
  sav = Factory.create(:saving, :balance_amount => "1000")

end
