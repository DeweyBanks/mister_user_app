# Populate database with rake db:seed_random_user
10.times do
  Users.create(RandomUser.fetch)
end

puts "10 users were created dude!"

