FactoryBot.define do
  factory :comment do
    text {'チャレンジ'}

    association :user
    association :eat
  end
end
