# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'demo user 1', password: 'password1')
User.create(username: 'demo user 2', password: 'password2')
Destination.create(name: 'paradise', user_id: 1, notes: 'such notes')
CdcInfo.create(destination_id: 1, advisories: "beware", vaccinations: "get them, please")