# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    nickname              { 'アえ間' }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 7) }
    password_confirmation { password }
  end
end
