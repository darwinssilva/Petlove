FactoryBot.define do
  factory :animal do
    name Faker::Name.name
    monthly_cost  Faker::Number.decimal(2, 3)
    animal_type Faker::Creature::Animal.name
    person
  end
end