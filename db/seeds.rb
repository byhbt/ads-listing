# Users
Fabricate(:user, email: 'dev+admin@thanh.xyz')
150.times do
  Fabricate(:user, email: FFaker::Internet.safe_email)
end

# Category
categories = ['Antique', 'Cars', 'Furniture', 'Computer', 'Electronic', 'Clothes']
categories.each do |category|
  Fabricate(:listing_category, name: category)
end

# Listing
100.times do
  category = ListingCategory.order(Arel.sql('RANDOM()')).first
  user = User.order(Arel.sql('RANDOM()')).first
  Fabricate(:listing, listing_category: category, user: user)
end
