# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Welcome.create(welcome_message: "welcome!")

Part.destroy_all
Song.destroy_all
Project.destroy_all
Artist.destroy_all

artist1 = Artist.create(artist_name: "Bobby B")

project1 = Project.create(artist_id: artist1.id, project_name: "Songs for Coding", project_notes: "A real mess, but it comes together in the end.")

song1 = Song.create(project_id: project1.id, song_name: "Whisper", song_note: "An ode to being quiet.")
song2 = Song.create(project_id: project1.id, song_name: "Yell at Everyone", song_note: "A ballad of screaming loudly.")

part1 = Part.create(song_id: song1.id, part_name: "Drums", part_note: "8 mics, close placement.")
part2 = Part.create(song_id: song1.id, part_name: "Bass", part_note: "DI and one mic.")
part3 = Part.create(song_id: song1.id, part_name: "Guitar", part_note: "One mic, finger pickin")
part4 = Part.create(song_id: song1.id, part_name: "triangle", part_note: "A nice high end")