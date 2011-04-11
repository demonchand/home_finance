class Loan < ActiveRecord::Base
  has_many :repayments

  after_create :money_goes_to_savings
  
  validates :giver_name, :loan_start_date, :loan_promise_date, :loan_amount, :presence => true
  validates :loan_amount, :numericality => { :greater_then_or_equal_to => 0.1 }
  
  def money_goes_to_savings
    if self.type_of_credit != "Goods"
      sav = Saving.find(1)
      sav.update_attributes(:balance_amount => sav.balance_amount + self.loan_amount)
      self.update_attributes(:status => "not paid yet")
    end
  end

  def to_s
    "#{giver_name}: #{loan_amount}"
  end
end
