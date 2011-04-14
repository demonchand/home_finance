class ReportController < ApplicationController
  def index
    @savings_report = Saving.all
    @expense_report = Expense.all
    @loan_report = Loan.all
    @repayment_report = Repayment.all
    @income_report = Income.all
  end

end
