require 'faker'

FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password "12345"
    password_confirmation "hello"
    name {Faker::Name.name}
  end
end