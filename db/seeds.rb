# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.create!(name: 'Mario', hp: 80, attack: 5)
Character.create!(name: 'Link', hp: 90, attack: 4)
Character.create!(name: 'Yoshi', hp: 60, attack: 3)
Character.create!(name: 'Pikachu', hp: 50, attack: 6)
Weapon.create!(name: 'Laser Gun', attack: 10)
Weapon.create!(name: 'Baseball Bat', attack: 20)