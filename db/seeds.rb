Product.destroy_all
Review.destroy_all
User.destroy_all

1.times do |index|
  User.create!(email: "admin@gmail.com",
                        password: "password",
                        admin: true)
end

1.times do |index|
  User.create!(email: "user@gmail.com",
                        password: "password")
end

20.times do |index|
  Product.create!(title: "toast",
                        image: "crab.jpg",
                        price: "3",
                        description: "Average product")
end
