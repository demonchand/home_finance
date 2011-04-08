class Repayment < ActiveRecord::Base
  after_save :repay_the_loan_amount_form_savings
  
  belongs_to :loan
  validates :loan_id, :repayment_date, :repayment_amount, :presence => true
  validates :repayment_amount, :numericality => { :greater_then_or_equal_to => 0.1 }

  def repay_the_loan_amount_form_savings
    saving_balance = Saving.find(1)
    if saving_balance.balance_amount > self.repayment_amount
      saving_balance.update_attributes(:balance_amount => saving_balance.balance_amount - repayment_amount)
      loan = Loan.find(self.loan_id)
      loan.update_attributes(:status => "paid")
      saving_balance.save!
      loan.save!
    else
      raise NoMethodError "not enugh to repay the loan amount "
    end
  end
end
