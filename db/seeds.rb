# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})

Movie.create({title: "The Princess Bride", year: 1987, plot: "Fencing, fighting, torture, revenge, giants, monsters, chases, escapes, true love, miracles..."})
Movie.create({title: "Forrest Gump", year: 1994, plot: "A man sits on a park bench with a stranger and tells her his life story."})
