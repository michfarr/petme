# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create({ name: "Bob", image: "" , category: "dog", price: 30.00, rating: 4.5, description: "I'm a very nice dog!" })
Pet.create({ name: "Marley", image: "" , category: "dog", price: 35.00, rating: 5.0, description: "I'm lazy dog!" })
Pet.create({ name: "Spot", image: "" , category: "dog", price: 40.00, rating: 4.0, description: "I'm a fast dog!" })
Pet.create({ name: "Spark", image: "" , category: "dog", price: 25.00, rating: 4.5, description: "I'm a happy dog!" })
Pet.create({ name: "Misty", image: "" , category: "cat", price: 15.00, rating: 2.5, description: "I'm a very independent cat!" })
Pet.create({ name: "Spok", image: "" , category: "cat", price: 18.00, rating: 4.0, description: "I'm not emotional." })
Pet.create({ name: "Jerry", image: "" , category: "guinea pig", price: 8.00, rating: 3.0, description: "I like vegetables!" })
Pet.create({ name: "Jumpy", image: "" , category: "rabbit", price: 10.00, rating: 3.0, description: "I love to jump!" })
