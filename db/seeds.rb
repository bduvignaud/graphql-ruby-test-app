# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Provider.create!([
  {name: 'Spotify', description: 'a Swedish audio streaming and media services provider'},
  {name: 'Deezer', description: 'a French online music streaming service'},
  {name: 'Apple Music', description: 'a music and video streaming service developed by Apple Inc'},
])

User.create!([
  {first_name: 'Jeanne', last_name: 'Alves', providers: Provider.order('RANDOM()').first(2)},
  {first_name: 'André', last_name: 'Brunel', providers: Provider.order('RANDOM()').first(1)},
  {first_name: 'Xavier', last_name: 'Tanguy', providers: Provider.order('RANDOM()').first(2)},
  {first_name: 'Thibaut', last_name: 'Petitjean', providers: Provider.order('RANDOM()').first(1)},
  {first_name: 'Charles', last_name: 'Normand', providers: Provider.order('RANDOM()').first(2)},
  {first_name: 'Victor', last_name: 'Bouvier', providers: Provider.order('RANDOM()').first(3)}
])

Artist.create!([
  {name: 'Pink Floyd' , description: 'Greatest group of all time', providers: Provider.order('RANDOM()').first(2)},
  {name: 'Black Sabbath', description: 'Marvel loves them', providers: Provider.order('RANDOM()').first(1)},
  {name: 'Jimi Hendrix', description: 'The best left-handed guitarist player ever', providers: Provider.order('RANDOM()').first(2)},
  {name: 'The Doors', description: 'Jim Morrison died to soon' , providers: Provider.order('RANDOM()').first(1)},
  {name: 'ACDC', description: 'It means "alternating current/direct current"', providers: Provider.order('RANDOM()').first(2)},
  {name: 'The Rolling Stones', description: 'English rock band starring the great Mick Jagger' , providers: Provider.order('RANDOM()').first(3)}
])

Album.create!([
  {name: 'Wish You Where Here', artist: Artist.find_by(name: 'Pink Floyd')},
  {name: 'The Dark Side of the Moon', artist: Artist.find_by(name: 'Pink Floyd')},
  {name: 'The Wall', artist: Artist.find_by(name: 'Pink Floyd')},
  {name: 'Paranoid', artist: Artist.find_by(name: 'Black Sabbath')},
  {name: 'Master of Reality', artist: Artist.find_by(name: 'Black Sabbath')},
  {name: 'Are you Experienced', artist: Artist.find_by(name: 'Jimi Hendrix')},
  {name: 'Electric Ladyland', artist: Artist.find_by(name: 'Jimi Hendrix')},
  {name: 'The Doors', artist: Artist.find_by(name: 'The Doors')},
  {name: 'Strange Days', artist: Artist.find_by(name: 'The Doors')},
  {name: 'L.A. Woman', artist: Artist.find_by(name: 'The Doors')},
  {name: 'Highway to Hell', artist: Artist.find_by(name: 'ACDC')},
  {name: 'Back in Black', artist: Artist.find_by(name: 'ACDC')},
  {name: 'The Razors Edge', artist: Artist.find_by(name: 'ACDC')},
  {name: 'Out of Our Heads', artist: Artist.find_by(name: 'The Rolling Stones')},
  {name: 'Their Satanic Majesties Request', artist: Artist.find_by(name: 'The Rolling Stones')},
  {name: 'Beggars Banquet', artist: Artist.find_by(name: 'The Rolling Stones')}
])
