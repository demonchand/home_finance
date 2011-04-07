class Income < ActiveRecord::Base

  after_create :money_goes_to_savings
  validates :name_of_the_income_source, :date, :money, :presence => true
  validates :money, :numericality => { :greater_then_or_equal_to => 0.1 }

  def money_goes_to_savings
    sav = Saving.find(1)
    sav.update_attributes(:balance_amount => sav.balance_amount + money)
  end
end
