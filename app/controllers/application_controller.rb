class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  @act = AccountType.all
  def go_and_sign_the_register(val1, val2, des, amo)
    s = Activity.create!(:date => Time.now, :description => des, :from => val1, :to => val2, :cash => amo)
    s.save!
  end
end
