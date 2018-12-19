# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Edit user",
             email: "edituser@edituser.com",
             password:              "password",
             password_confirmation: "password",
             edit: true)

User.create!(name:  "View user",
             email: "viewuser@viewuser.com",
             password:              "password",
             password_confirmation: "password",
             view: true)

User.create!(name:  "Restricted user",
             email: "restricteduser@restricteduser.com",
             password:              "password",
             password_confirmation: "password",
             restricted: true)
