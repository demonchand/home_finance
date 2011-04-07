class Expense < ActiveRecord::Base

  after_create :get_the_amount_from_savings

  validates :date, :description, :amount, :presence => true
  validates :amount, :numericality => { :greater_then_or_equal_to => 0.01 }

  def get_the_amount_from_savings
    s = Saving.find(1)
    if s.balance_amount > amount
      s.update_attributes(:balance_amount => s.balance_amount - amount)
      s.save!
    else
      raise SyntaxError, "savings is not enough to pay the expenses"
    end
  end
end
