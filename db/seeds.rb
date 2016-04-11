# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pets = Pet.create({ name: "Bob", image: "" , type: "dog", price: 30.00, rating: 4.5, description: "I'm a very nice dog!" })
pets = Pet.create({ name: "Marley", image: "" , type: "dog", price: 35.00, rating: 5.0, description: "I'm lazy dog!" })
pets = Pet.create({ name: "Spot", image: "" , type: "dog", price: 40.00, rating: 4.0, description: "I'm a fast dog!" })
pets = Pet.create({ name: "Spark", image: "" , type: "dog", price: 25.00, rating: 4.5, description: "I'm a happy dog!" })
pets = Pet.create({ name: "Misty", image: "" , type: "cat", price: 15.00, rating: 2.5, description: "I'm a very independent cat!" })
pets = Pet.create({ name: "Spok", image: "" , type: "cat", price: 18.00, rating: 4.0, description: "I'm not emotional." })
pets = Pet.create({ name: "Jerry", image: "" , type: "guinea pig", price: 8.00, rating: 3.0, description: "I like vegetables!" })
pets = Pet.create({ name: "Jumpy", image: "" , type: "rabbit", price: 10.00, rating: 3.0, description: "I love to jump!" })
