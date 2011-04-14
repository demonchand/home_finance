class Bank < ActiveRecord::Base
  validates :account_number, :amount, :transaction_type, :date, :presence => true
  validates :numericality => { :greater_then_or_equal_to => 1.0 }
end
