require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

unique_post = Post.find_or_create_by!(
  title: "This is the title of a unique test post",
  body: "This is the body of a unique test post"
)

Comment.find_or_create_by!(
  post: unique_post,
  body: "This is the body of a unique comment"
)

50.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy:  RandomData.random_paragraph,
    price: RandomData.random_integer
  )
end
advertisements = Advertisement.all

puts "Seed finished"
puts "#{Advertisement.count} ads created"

unique_advertisement = Advertisement.find_or_create_by!(
  title: "This is the title of a unique test ad",
  copy: "This is the copy of a unique test ad",
  price: "This is the price of a unique test ad"
)
