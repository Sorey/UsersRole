# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create(login: "AdmiN", first_name: "Admin", last_name: "Manage", email: "33admin44@gmail.com", password: "987789", password_confirmation: "987789")
u2 = User.create(login: "EditoR",first_name: "Editor", last_name: "Update", email: "33editor44@gmail.com", password: "876678", password_confirmation: "876678")
u3 = User.create(login: "UseR", first_name: "User", last_name: "See", email: "33user44@gmail.com", password: "765567", password_confirmation: "765567")

Role.delete_all
r1 = Role.create(id: 1, name: "Admin")
r2 = Role.create(id: 2, name: "Editor")
r3 = Role.create(id: 3, name: "User")

Upart.delete_all
u1.roles << [r1]
u1.roles << [r2]
u1.roles << [r3]
u2.roles << [r2]
u2.roles << [r3]
u3.roles << [r3]
