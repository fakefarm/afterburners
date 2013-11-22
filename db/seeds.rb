# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Category.create(title: 'Up')
Category.create(title: 'Down')
Category.create(title: 'Left')
Category.create(title: 'Right')
Category.create(title: 'Loud')
Category.create(title: 'Soft')
Category.create(title: 'Day')
Category.create(title: 'Night')
Category.create(title: 'Solo')
Category.create(title: 'Party')
Category.create(title: 'Simple')
Category.create(title: 'Complex')
Category.create(title: 'Coffee')
Category.create(title: 'Beer')
Category.create(title: 'Work')
Category.create(title: 'Play')

