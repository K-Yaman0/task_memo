FactoryBot.define do
  factory :memo do
    memo  { Faker::Lorem.sentence }
    association :user
    association :task
  end
end
