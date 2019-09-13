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

artist1 = Artist.create(artist_name: "The Shi##y Beatles")

project1 = Project.create(artist_id: artist1.id, project_name: "The Tan Album", project_notes: "An homage to our favorite band...")

