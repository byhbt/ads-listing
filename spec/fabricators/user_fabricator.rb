Fabricator(:user) do
  email { "user_#{FFaker::Lorem.word}_#{SecureRandom.hex(5)}@braive.com" }
  password 'Abcd1234'
end
