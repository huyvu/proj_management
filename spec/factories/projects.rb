# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    start_date "2012-07-20"
    due_date "2012-07-20"
  end
end
