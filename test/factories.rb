#Factory.define :expenses do |x|
#  u.date '2011-07-03'
#  x.description 'This for test'
#  x.amount 25.09
#end
FactoryGirl.define do
  factory :expense do
    date("2011-07-03")
    description("It is just for test")
    amount(12.25)
#    start_date Date.parse("2009-01-23")
  end
end
