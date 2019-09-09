# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Welcome.create(welcome_message: "welcome!")

Project.destroy_all
Artist.destroy_all
Song.destroy_all
Part.destroy_all

artist1 = Artist.create(artist_name: "Bobby B")

project1 = Project.create(artist_id: artist1.id, project_name: "New Album", project_notes: "A great display of stuff")

song1 = Song.create(project_id: project1.id, song_name: "song one", song_note: "what a song")
song2 = Song.create(project_id: project1.id, song_name: "song two", song_note: "what a damn song")

part1 = Part.create(song_id: song1.id, part_name: "drums", part_note: "rippin it up")
part2 = Part.create(song_id: song1.id, part_name: "bass", part_note: "slappin it up")

part3 = Part.create(song_id: song2.id, part_name: "vox", part_note: "hollerin it up")
part4 = Part.create(song_id: song2.id, part_name: "triangle", part_note: "dingin it up")