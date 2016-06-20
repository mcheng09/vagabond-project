# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({first_name: "Anthony", last_name: "Schurz", email: "anthonyschurz@gmail.com", location: "San Francisco"},
{first_name: "Wayne", last_name: "Banks", email: "waynbanks13@gmail.com", location: "San Francisco"})

Post.create({title: "Free Kittens", description: "There are free kittens on 16th and mission for anyone looking for a new pet.", user_id: 1},
{title: "Lost Cat", description: "I can't find my large Tabby Cat, Mr Bigglesworth", user_id: 1},
{title: "Cat Advice", description: "What should I be feeding my elderly cat?", user_id: 2},
{title: "Favorite Cat", description: "Does anyone want to share their favorite type of cat? Thinking about adopting", user_id: 2})
