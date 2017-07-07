Product.destroy_all
Review.destroy_all
User.destroy_all

1.times do |index|
  User.create!(email: "test@gmail.com",
                        password: "qqqqqq",
                        admin: true)
end
