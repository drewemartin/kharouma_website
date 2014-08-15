# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    body "MyText"
    title "MyString"
    last_editor "MyString"
    publish_location "MyString"
    publish_now false
    user_id 1
  end
end
