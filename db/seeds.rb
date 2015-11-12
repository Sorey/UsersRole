# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(first_name: "Admin", last_name: "Manage", email: "33admin44@gmail.com", password: "98789", password_confirmation: "98789")
u2 = User.create(first_name: "Editor", last_name: "Update", email: "33editor44@gmail.com", password: "87678", password_confirmation: "87678")
u3 = User.create(first_name: "User", last_name: "See", email: "33user44@gmail.com", password: "76567", password_confirmation: "76567")

r1 = Role.create(name: "Admin")
r2 = Role.create(name: "Editor")
r3 = Role.create(name: "User")

u1.roles << [r1]
u2.roles << [r2]
u3.roles << [r3]
