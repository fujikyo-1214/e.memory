FactoryBot.define do
  factory :eat do
    title {'テスト'}
    text {'サンプル'}

    association :user

    after(:build) do |eat|
      eat.image.attach(io: File.open('public/images/rest.jpg'), filename: 'rest.jpg')
    end
  end
end
