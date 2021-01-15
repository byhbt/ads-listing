Fabricator(:listing) do
  title { FFaker::Lorem.word.capitalize }
  content { FFaker::Lorem.sentence }
  price { Random.new.rand(20..100) }
  expired_at { Date.current + Random.new.rand(10..30).days }
  user { Fabricate(:user) }
  listing_category { Fabricate(:listing_category) }
end
