# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

html = Category.create(name: "HTML")
css = Category.create(name: "CSS")
javascript = Category.create(name: "Javascript")
rails = Category.create(name: "Rails")

user = User.create(email: "me@ex.com", password: "password", name: "Matt Craig")