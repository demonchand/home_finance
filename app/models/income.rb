class Income < ActiveRecord::Base
  validates :name_of_the_income_source, :date, :money, :presence => true
  validates :money, :numericality => { :greater_then_or_equal_to => 0.1 }
end
