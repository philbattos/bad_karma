# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.destroy_all

Player.create({first_name: 'Eileen', last_name: 'Fisher', position: 'forward', gender: 'female', years_on_team: 2, jersey_number: 26})
Player.create({first_name: 'Jason', last_name: 'Livingstone', position: 'defense', gender: 'male', years_on_team: 3, jersey_number: 9})
Player.create({first_name: 'Cherri', last_name: 'Sanchez', position: 'forward', gender: 'female', years_on_team: 4, jersey_number: 8})
Player.create({first_name: 'Phil', last_name: 'Battos', position: 'forward', gender: 'male', years_on_team: 4, jersey_number: 1})
Player.create({first_name: 'Justin', last_name: 'Elkins', position: 'goalkeeper', gender: 'male', years_on_team: 1, jersey_number: 15})
Player.create({first_name: 'Jocie', last_name: 'Jankowski', position: 'midfield', gender: 'female', years_on_team: 2, jersey_number: 13})
Player.create({first_name: 'Melanie', last_name: 'Hill', position: 'midfield', gender: 'female', years_on_team: 2, jersey_number: 29})
Player.create({first_name: 'Dani', last_name: 'Kirschner', position: 'midfield', gender: 'female', years_on_team: 3, jersey_number: 3})
Player.create({first_name: 'Danny', last_name: 'McGee', position: 'defense', gender: 'male', years_on_team: 1, jersey_number: 44})
Player.create({first_name: 'Josh', last_name: 'Shemroske', position: 'forward', gender: 'male', years_on_team: 2, jersey_number: 10})
Player.create({first_name: 'Colin', last_name: 'Stallard', position: 'midfield', gender: 'male', years_on_team: 2, jersey_number: 32})
Player.create({first_name: 'Erik', last_name: 'Langeteig', position: 'midfield', gender: 'male', years_on_team: 0, jersey_number: 8})
Player.create({first_name: 'Maria', last_name: 'Herrera', position: 'defense', gender: 'female', years_on_team: 0, jersey_number: 7})
Player.create({first_name: 'Stevie', last_name: 'Elliott', position: 'defense', gender: 'female', years_on_team: 2, jersey_number: 78})
Player.create({first_name: 'Zach', last_name: 'Leavitt', position: 'forward', gender: 'male', years_on_team: 3, jersey_number: 6})
Player.create({first_name: 'Dom', last_name: 'Lieu', position: 'defense', gender: 'female', years_on_team: 0, jersey_number: 19})
Player.create({first_name: 'Brian', last_name: 'Ross', position: 'midfield', gender: 'male', years_on_team: 3, jersey_number: 17})
Player.create({first_name: 'Steve', last_name: 'Lawley', position: 'defense', gender: 'male', years_on_team: 0, jersey_number: 85})

  # {last_name: 'Fisher'}, {position: 'striker'}, {gender: 'female'}, {years_on_team: '2'}, {jersey_number: 99}])

# Player.create(first_name: 'Jason', last_name: 'Livingstone', position: 'sweeper', gender: 'male', years_on_team: '3', jersey_number: 9)
