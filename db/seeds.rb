# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "tracks", "tracks_users"].each do |table_name|
  ActiveRecord::Base.connection.execute("Truncate #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://avatars2.githubusercontent.com/u/3531085?v=3&s=400"
  },{
  username: "ruthlessammo",
  email: "ruthless@ammo.com",
  password: "password",
  password_confirmation: "password",
  image: "http://i.imgur.com/9akkXBX.jpg"
  },{
  username: "moorhen",
  email: "olliemoore@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "http://imgur.com/TYhHHc6.jpg"
  },{
  username: "gi",
  email: "gi@email.com",
  password: "password",
  password_confirmation: "password",
  image: "http://cdn-img.instyle.com/sites/default/files/styles/684xflex/public/1446211964/103015-gigi-hadid-lead.jpg?itok=jvSzuUOW"
  },{
  username: "marcopolo",
  email: "marco@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "http://www.italymagazine.com/sites/default/files/feature-story/leader/marco-polo.jpg"
  },{
  username: "bigChris",
  email: "bigkris@email.com",
  password: "password",
  password_confirmation: "password",
  image: "http://www.streetstalkin.com/wp-content/uploads/2016/06/DMV-Rapper-OG-ManMan-Killed-After-Recording-Diss-Music-Video-At-The-Grave-Of-Rival-Big-Flock039s-Friend-Lil-Chris-Video2.jpg"
  },{
  username: "caroarrow",
  email: "cwilson@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: "http://vignette4.wikia.nocookie.net/disney/images/0/0f/Carol-of-the-Arrow.png/revision/latest?cb=20150715173330"
  },{
  username: "LPW",
  email: "lawrie@email.com",
  password: "password",
  password_confirmation: "password",
  image: "http://vignette3.wikia.nocookie.net/hanna-barbera/images/2/24/Johnny_Bravo.jpg/revision/latest?cb=20120423033926"
  },{
  username: "janeisthename",
  email: "jane@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://multiglom.files.wordpress.com/2015/03/demi-moore-in-g-i-jane-1.jpg"
  },{
  username: "petergriffin",
  email: "peter.griffin@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://pbs.twimg.com/profile_images/1119269505/0509071614Peter_Griffin.jpg"
  },{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://avatars2.githubusercontent.com/u/12997768?v=3&s=400"
  },{
  username: "21savage",
  email: "21savage@gatmail.com",
  password: "password",
  password_confirmation: "password",
  image: "https://ronezhiphopcleveland.files.wordpress.com/2016/04/21-savage.png?w=1222&h=650"
  },{
  username: "EddFromTheNorth",
  email: "ed@ga.co",
  password: "password",
  password_confirmation: "password",
  image: "https://media.licdn.com/media/AAEAAQAAAAAAAAhuAAAAJDkzZmRiMzBiLTRjZDgtNDIxNi05N2U3LWQ2YzZmMDdhYTk5MQ.jpg"
  },{
  username: "hellafire",
  email: "burning@down.com",
  password: "password",
  password_confirmation: "password",
  image: "https://i.ytimg.com/vi/ofEO0cZwjGU/maxresdefault.jpg"
  },{
  username: "rosieHw",
  email: "rosiehuntington@whitely.com",
  password: "password",
  password_confirmation: "password",
  image: "http://i1.mirror.co.uk/incoming/article5534203.ece/ALTERNATES/s615b/Rosie-Huntington-Whiteley.jpg"
  },{
  username: "eddyspaghetti",
  email: "efasano@bu.edu@",
  password: "password",
  password_confirmation: "password",
  image: "http://www.telegraphindia.com/1131002/images/tony.jpg"
}])

puts "Created Users"

Track.create!([{
  title: "Shook Ones pt II",
  artist: "Mobb Deep",
  soundcloud_id: "18967639",
  user_id: 6
  },{
  title: "Hypnotized",
  artist: "Frank Ekwa",
  soundcloud_id: "283315366",
  user_id: 2
  },{
  title: "Jungle",
  artist: "Frank Ekwa",
  soundcloud_id: "205299133",
  user_id: 2
  },{
  title: "Let me Lick it",
  artist: "Sunship",
  soundcloud_id: "149347574",
  user_id: 2
  },{
  title: "Malboro Man",
  artist: "Dom Lynch",
  soundcloud_id: "276115067",
  user_id: 3
  },{
  title: "Wandering Star",
  artist: "Empire of the Sun",
  soundcloud_id: "179888044",
  user_id: 4
  },{
  title: "Its a Pity",
  artist: "Laid Blak",
  soundcloud_id: "40151926",
  user_id: 6
  },{
  title: "Holding On",
  artist: "Julio Bashmore",
  soundcloud_id: "202965984",
  user_id: 7
  },{
  title: "Where BK at?",
  artist: "Biggie/Metro Boomin",
  soundcloud_id: "251127351",
  user_id: 2
  },{
  title: "007",
  artist: "The Mouse Outfit",
  soundcloud_id: "195761476",
  user_id: 8
  },{
  title: "Bords of Canada",
  artist: "Midland",
  soundcloud_id: "181628528",
  user_id: 5
  },{
  title: "Nissim",
  artist: "Gasslamp Killer",
  soundcloud_id: "72178216",
  user_id: 11
  },{
  title: "You not fit to touch",
  artist: "Dele Sosmi",
  soundcloud_id: "232571624",
  user_id: 15
  },{
  title: "Pronto",
  artist: "Freddie Gibbs",
  soundcloud_id: "192156076",
  user_id: 3
  },{
  title: "Full Circle",
  artist: "George Fitzgerald",
  soundcloud_id: "192980593",
  user_id: 1
  },{
  title: "Jungle",
  artist: "Frank Ekwa",
  soundcloud_id: "205299133",
  user_id: 9
  },{
  title: "Ain't Safe",
  artist: "Skepta",
  soundcloud_id: "171472581",
  user_id: 4
  },{
  title: "Sunflowers",
  artist: "The Deli",
  soundcloud_id: "143067535",
  user_id: 5
  }])

puts "Created Tracks"
