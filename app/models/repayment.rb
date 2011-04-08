class Repayment < ActiveRecord::Base
  belongs_to :loan
  validates :loan_id, :repayment_date, :repayment_amount, :presence => true
  validates :repayment_amount, :numericality => { :greater_then_or_equal_to => 0.1 }
end
