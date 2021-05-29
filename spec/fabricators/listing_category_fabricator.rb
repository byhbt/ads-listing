Fabricator(:listing_category) do
  name_str = FFaker::Lorem.word.capitalize
  name { name_str }
  description { FFaker::Lorem.paragraph[0..159] }
  display_order 1
end
