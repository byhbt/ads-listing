# frozen_string_literal: true

Fabricator(:listing) do
  title = FFaker::Lorem.word.capitalize
  title { title }
  content { FFaker::Lorem.sentence }
  price { Random.new.rand(20_000..10_000_000) }
  expired_at { Date.current + Random.new.rand(10..30).days }
  user { Fabricate(:user) }
  listing_category { Fabricate(:listing_category) }
end
