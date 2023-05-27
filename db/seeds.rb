puts "Deleting old data..."
User.destroy_all

puts "Creating new data..."
User.create! email: "reader@email.com", password: "password", role: "reader"
User.create! email: "admin@email.com", password: "password", role: "admin"

3.times do |index|
  Article.create! title: "Draft article #{index + 1}", status: "draft"
  Article.create! title: "Published article #{index + 1}", status: "published"
end

puts "Seeding complete!"
