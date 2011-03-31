Factory.define :expense do |x|
  x.date "2011-07-03"
  x.description "Its might be"
  x.amount("12.25")
end
Factory.define :user do |x|
  x.email "abc@gmail.com"
  x.password "123456"
end
