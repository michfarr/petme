

users = [
  [ "Anonymous", "userone@pet.me", "abcd1234", "abcd1234", "http://indiabright.com/wp-content/uploads/2015/11/profile_picture_by_kyo_tux-d4hrimy.png"
  ],
  [ "Skull", "userthree@pet.me", "abcd1234", "abcd1234", "http://i.hizliresim.com/Xy80gj.jpg?dateline=1423171268"
  ],
  [ "Albert", "userthree@pet.me", "abcd1234", "abcd1234", "http://static.giantbomb.com/uploads/original/30/303861/2808440-funny-cartoon-boys-facebook-profile-pictures.jpg"
  ],
  [ "Killah", "userfour@pet.me", "abcd1234", "abcd1234", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbmZj0nQkzFBW_o-bNBNtmMsDz4cB4gvvLcQMcFc_zAruDy78"
  ]
]

users.each do | name, email, password, password_confirmation, profile_picture |
  User.create( name: name, email: email, password: password, password_confirmation: password_confirmation, profile_picture: profile_picture )
end

user_pets = {}

user_pets["Anonymous"] = [
  ["Bob", "bob.jpg", 30.00, 4.5, "I'm a very nice dog!", "dog, independent social"],
  ["Marley", "marley.jpg", 35.00, 5.0, "I'm lazy cat!", "cat, social"],
  ["Spot", "spot.jpg", 40.00, 4.0, "I'm a fast cat!", "cat, clean"]
  ]

user_pets["Skull"] = [
  ["Spark", "spark.jpg", 25.00, 4.5, "I'm a happy dog!", "dog, good for kids"],
  ["Misty", "misty.jpg", 15.00, 2.5, "I'm a very independent cat!", "cat, independent, clean"],
  ["Spock", "spok.jpg", 18.00, 4.0, "I'm not emotional.", "rabbit, good for kids"]
  ]

user_pets["Albert"] = [
  ["Jerry", "jerry.jpg", 8.00, 3.0, "I like vegetables!", "guinea pig, aggressive"]
  ["Grumpy Cat", "grumpycat.jpg", 20.00, 1.0, "I am grumpy", "cat, sad"]
  ]

user_pets["Killah"] = [
  ["Jumpy", "jumpy.jpg", 10.00, 3.0, "I love to jump!", "dog, sad"],
  ["Doge", "doge.jpg", 100.00, 5.0, "░░░░░░░░░▄░░░░░░░░░░░░░░▄░░░░\n░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌░░░\n░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐░░░\n░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐░░░\n░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐░░░\n░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌░░░\n░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒▌░░\n░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐░░\n░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌░\n░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌░\n▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒▐░\n▐▒▒▐▀▐▀▒░▄▄▒▄▒▒▒▒▒▒░▒░▒░▒▒▒▒▌\n▐▒▒▒▀▀▄▄▒▒▒▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▐░\n░▌▒▒▒▒▒▒▀▀▀▒▒▒▒▒▒░▒░▒░▒░▒▒▒▌░\n░▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▄▒▒▐░░\n░░▀▄▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▄▒▒▒▒▌░░\n░░░░▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀░░░\n░░░░░░▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀░░░░░\n░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▀▀░░░░░░░░", "dog, good for kids"]
  ]

categories = [
  "dog",
  "cat",
  "guinea pig",
  "rabbit",
  "social",
  "aggressive",
  "good for kids",
  "sad",
  "independent",
  "clean"
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
