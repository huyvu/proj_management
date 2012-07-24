# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyText"
    start_date "2012-07-24"
    due_date "2012-07-24"
    member nil
  end
end
