

users = [
  [ "Anonymous", "userone@pet.me", "abcd", "http://indiabright.com/wp-content/uploads/2015/11/profile_picture_by_kyo_tux-d4hrimy.png"
  ],
  [ "Skull", "userthree@pet.me", "abcd", "http://i.hizliresim.com/Xy80gj.jpg?dateline=1423171268"
  ],
  [ "Albert", "userone@pet.me", "abcd", "http://static.giantbomb.com/uploads/original/30/303861/2808440-funny-cartoon-boys-facebook-profile-pictures.jpg"
  ],
  [ "Killah", "userfour@pet.me", "abcd", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbmZj0nQkzFBW_o-bNBNtmMsDz4cB4gvvLcQMcFc_zAruDy78"
  ]
]

users.each do | name, email, password, profile_picture |
  User.create( name: name, email: email, password: password, profile_picture: profile_picture )
end

user_pets = {}

user_pets["Anonymous"] = [
  ["Bob", "bob.jpg", 30.00, 4.5, "I'm a very nice dog!", "dog, social"],
  ["Marley", "marley.jpg", 35.00, 5.0, "I'm lazy dog!", "dog"],
  ["Spot", "spot.jpg", 40.00, 4.0, "I'm a fast dog!", "dog"]
  ]

user_pets["Skull"] = [
  ["Spark", "spark.jpg", 25.00, 4.5, "I'm a happy dog!", "dog"],
  ["Misty", "misty.jpg", 15.00, 2.5, "I'm a very independent cat!", "cat, independent"],
  ["Spok", "spok.jpg", 18.00, 4.0, "I'm not emotional.", "cat"]
]

user_pets["Albert"] = [
  ["Jerry", "jerry.jpg", 8.00, 3.0, "I like vegetables!", "guinea pig, aggressive"]
]

user_pets["Killah"] = [
  ["Jumpy", "jumpy.jpg", 10.00, 3.0, "I love to jump!", "rabbit, sad"]
]

categories = [
  "dog",
  "cat",
  "guinea pig",
  "rabbit",
  "social",
  "aggressive",
  "sad",
  "independent",
]

user_pets.each do | user_name, pets |
  user = User.find_by( name: user_name )

  pets.each do | name, image, price, rating, description, categories |
    pet = Pet.create( name: name, image: image, price: price, rating: rating, description: description )

    categories.split( ", ").each do | category_name |
      if
        category = Category.find_by( name: category_name )
      else
        category = Category.create( name: category_name )
      end

    CategoriesPets.create( pet: pet, category: category )
    end
  end
end
