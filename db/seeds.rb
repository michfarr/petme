# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create({ name: "Bob", image: "bob.jpg" , category: "dog", price: 30.00, rating: 4.5, description: "I'm a very nice dog!" })
Pet.create({ name: "Marley", image: "marley.jpg" , category: "dog", price: 35.00, rating: 5.0, description: "I'm lazy dog!" })
Pet.create({ name: "Spot", image: "spot.jpg" , category: "dog", price: 40.00, rating: 4.0, description: "I'm a fast dog!" })
Pet.create({ name: "Spark", image: "spark.jpg" , category: "dog", price: 25.00, rating: 4.5, description: "I'm a happy dog!" })
Pet.create({ name: "Misty", image: "misty.jpg" , category: "cat", price: 15.00, rating: 2.5, description: "I'm a very independent cat!" })
Pet.create({ name: "Spok", image: "spok.jpg" , category: "cat", price: 18.00, rating: 4.0, description: "I'm not emotional." })
Pet.create({ name: "Jerry", image: "jerry.jpg" , category: "guinea pig", price: 8.00, rating: 3.0, description: "I like vegetables!" })
Pet.create({ name: "Jumpy", image: "jumpy.jpg" , category: "rabbit", price: 10.00, rating: 3.0, description: "I love to jump!" })

users = [
  [ "Anonymous", "userone@pet.me", "http://indiabright.com/wp-content/uploads/2015/11/profile_picture_by_kyo_tux-d4hrimy.png"
  ],
  [ "Skull", "userthree@pet.me", "http://i.hizliresim.com/Xy80gj.jpg?dateline=1423171268"
  ],
  [ "Albert", "userone@pet.me", "http://static.giantbomb.com/uploads/original/30/303861/2808440-funny-cartoon-boys-facebook-profile-pictures.jpg"
  ],
  [ "Killah", "userfour@pet.me", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbmZj0nQkzFBW_o-bNBNtmMsDz4cB4gvvLcQMcFc_zAruDy78"
  ]
]

users.each do | name, email, profile_picture |
  User.create( name: name, email: email, profile_picture: profile_picture )
end
