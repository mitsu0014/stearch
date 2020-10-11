FactoryBot.define do
  factory :performance do
    title { Faker::Name.name }
    price1 { Faker::Number.between(from: 0, to: 9_999_999) }
    genre_id { 2 }
    area_id { 2 }
    start_date { Faker::Date.in_date_period }
    end_date { Faker::Date.between(from: 1.years.ago, to: Date.today)  }
    url { Faker::Internet.url }
    association :user
    group { Faker::Name.name }
    start_at { Faker::String.random  }
    
  end
end
