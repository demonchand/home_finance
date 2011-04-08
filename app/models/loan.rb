class Loan < ActiveRecord::Base

  validates :giver_name, :loan_start_date, :loan_promise_date, :loan_amount, :presence => true
  validates :loan_amount, :numericality => { :greater_then_or_equal_to => 0.1 }
  
end
