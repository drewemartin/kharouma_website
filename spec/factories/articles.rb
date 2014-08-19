# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :article do
    body {Faker::Lorem.characters(3243)}
    title {Faker::Lorem.characters(23)}
    user_id {Faker::Number.number(2)}
    type 'project'
    show_on_homepage 'yes'
  end
end
