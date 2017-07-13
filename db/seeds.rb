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

5.times do |index|
  Product.create!(title: "Pacific Rock Crab",
                        image: "crab.jpg",
                        price: "12",
                        description: "Romaleon antennarium has a fan-shaped carapace with eleven teeth to either side of the eyestalks, the widest point falling at the eighth or ninth tooth. The chelipeds are quite stout with the black tips bent downward. The antennae are long and prominent, accounting for the specific name. The dorsal surfaces of adults are uniformly red, but the ventral surface of the carapace is spotted.

This species is easily confused with the red rock crab, Cancer productus. They can be distinguished by the less prominent antennae, less robust claws, and lack of ventral spots on the latter.")
end

1.times do |index|
  Product.create!(title: "Halibut fillets",
                        image: "halibut.png",
                        price: "4.50",
                        description: "Romaleon antennarium has a fan-shaped carapace with eleven teeth to either side of the eyestalks, the widest point falling at the eighth or ninth tooth. The chelipeds are quite stout with the black tips bent downward. The antennae are long and prominent, accounting for the specific name. The dorsal surfaces of adults are uniformly red, but the ventral surface of the carapace is spotted.

This species is easily confused with the red rock crab, Cancer productus. They can be distinguished by the less prominent antennae, less robust claws, and lack of ventral spots on the latter.")
end

1.times do |index|
  Product.create!(title: "Maine Lobster",
                        image: "lobster.jpg",
                        price: "26",
                        description: "Romaleon antennarium has a fan-shaped carapace with eleven teeth to either side of the eyestalks, the widest point falling at the eighth or ninth tooth. The chelipeds are quite stout with the black tips bent downward. The antennae are long and prominent, accounting for the specific name. The dorsal surfaces of adults are uniformly red, but the ventral surface of the carapace is spotted.

This species is easily confused with the red rock crab, Cancer productus. They can be distinguished by the less prominent antennae, less robust claws, and lack of ventral spots on the latter.")
end
