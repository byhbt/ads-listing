Fabricator(:listing_category) do
  name { FFaker::Lorem.word.capitalize }
  description { FFaker::Lorem.paragraph[0..159] }
  display_order 1
end
