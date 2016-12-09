# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "tracks"].each do |table_name|
  ActiveRecord::Base.connection.execute("Truncate #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "ruthlessammo",
  email: "williamhilton@email.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "moorehen",
  email: "olliemoore@gmail.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "gigi",
  email: "gi@email.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "marcopolo",
  email: "marco@gmail.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "bigChris",
  email: "bigkris@email.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "carothecoder",
  email: "cwilson@gmail.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "LWP",
  email: "lawrie@email.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "janeisthename",
  email: "jane@ga.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "peterran",
  email: "peter.pan@ga.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "21savage",
  email: "21savage@gatmail.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "EddTheColdNorth",
  email: "ed@ga.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "hellafire",
  email: "burning@down.com",
  password: "password",
  password_confirmation: "password"
  },{
  username: "eddyspaghetti",
  email: "efasano@bu.edu@",
  password: "password",
  password_confirmation: "password"
}])

puts "Created Users"

Track.create!([{
  title: "Shook Ones pt II",
  artist: "Mobb Deep",
  url: "https://www.youtube.com/watch?v=0NUX4tW5pps",
  user_id: 2
  },{
  title: "Hypnotized",
  artist: "Frank Ekwa",
  url: "https://soundcloud.com/frankekwa/frank-ekwa-hypnotized-freestyle",
  user_id: 2
  },{
  title: "Hypnotized",
  artist: "Frank Ekwa",
  url: "https://soundcloud.com/frankekwa/frank-ekwa-hypnotized-freestyle",
  user_id: 2
  },{
  title: "Sunflowers",
  artist: "The Deli",
  url: "https://soundcloud.com/the-deli/unttigbhacwy",
  user_id: 4
  }])

puts "Created Tracks"
