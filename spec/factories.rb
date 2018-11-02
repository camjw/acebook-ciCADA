# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    content { 'MyText' }
  end
  factory :image_like do
  end
  factory :user do
    email { 'factory@mail.co' }
    username { 'wethebestmusic' }
    password { 'password' }
  end
end
