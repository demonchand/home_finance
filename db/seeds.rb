# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create!(:email => "demonchand@gmail.com", :password => "123456")
User.create!(:email => "abc@gmail.com", :password => "123456")

account = [ "expense", "saving", "income", "loan" ]
account.each do |x|
  AccountType.create!(:account_name => x)
end
