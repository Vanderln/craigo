20.times do
  User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password" )
end

300.times do
  Post.create(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, user_id: 1 + rand(20))
end

4000.times do
  Comment.create(content: Faker::Lorem.paragraph, user_id: 1+ rand(20), post_id: 1 + rand(300))
end
