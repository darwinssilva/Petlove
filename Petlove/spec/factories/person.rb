FactoryBot.define do
  factory :person do
    name Faker::Name.name
    document  Faker::Number.number(5)
    birthdate Faker::Date.birthday(18, 65)
  end
end