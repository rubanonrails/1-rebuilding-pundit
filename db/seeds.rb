puts "Deleting old data..."
User.destroy_all

puts "Creating new data..."
reader = User.create! email: "reader@email.com", password: "password", role: "reader"
admin = User.create! email: "admin@email.com", password: "password", role: "admin"

puts "Seeding complete!"
