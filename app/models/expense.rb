class Expense < ActiveRecord::Base
  #validates :description, :amount, :presence => true
  validates :date, :description, :amount, :presence => true
  validates :amount, :numericality => { :greater_then_or_equal_to => 0.01 }
end
