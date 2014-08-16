# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :article do
    body {Faker::Lorem.characters(3243)}
    title {Faker::Lorem.characters(23)}
    last_editor {Faker::Name.name}
    publish_location {Faker::Name.name}
    publish_now {Faker::Name.name}
    user_id {Faker::Number.number(2)}
  end
end
