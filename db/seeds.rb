# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Users"
users = User.create(
  [
    {
      name: "Vitor Barbosa",
      email: "barbosa@gmail.com",
      password: "123456789",
      password_confirmation: "123456789",
      github: "vituuGit"
    },
    {
      name: "Carla",
      email: "carla@gmail.com",
      password: "123456789",
      password_confirmation: "123456789",
      github: "carlaGit"
    }
  ]
)

puts "Creating Projects"
projects = [
  Project.find_or_create_by(
    name: "Owla",
    description: "This project helps improving classes",
    user_id: "1",
    check_project: true
  ),
  Project.find_or_create_by(
    name: "Falko",
    description: "Agile Projects Manager",
    user_id: "2",
    check_project: true
  )
]


puts "Creating Releases"
releases = [
  Release.find_or_create_by(
    name: "R1",
    description: "RUP Release",
    initial_date: "01-08-2016",
    final_date: "01-10-2016",
    project_id: "1"
  ),
  Release.find_or_create_by(
    name: "R2",
    description: "Agile Release",
    initial_date: "01-10-2016",
    final_date: "01-12-2016",
    project_id: "1"
  ),
  Release.find_or_create_by(
    name: "R - 01",
    description: "First Release",
    initial_date: "01-08-2016",
    final_date: "01-10-2016",
    project_id: "2"
  ),
  Release.find_or_create_by(
    name: "R - 02",
    description: "Second Release",
    initial_date: "01-10-2016",
    final_date: "01-12-2016",
    project_id: "2"
  )
]

puts "Creating Sprints"
sprints = [
  Sprint.find_or_create_by(
    name: "Sprint 1 - P1",
    description: "First Sprint",
    initial_date: "01-08-2016",
    final_date: "01-10-2016",
    release_id: "1"
  ),
  Sprint.find_or_create_by(
    name: "Sprint 2 - P1",
    description: "Second Sprint",
    initial_date: "01-10-2016",
    final_date: "01-12-2016",
    release_id: "1"
  ),
  Sprint.find_or_create_by(
    name: "Sprint 1 - P2",
    description: "First Sprint",
    initial_date: "01-08-2016",
    final_date: "01-10-2016",
    release_id: "2"
  ),
  Sprint.find_or_create_by(
    name: "Sprint 2 - P2",
    description: "Second Sprint",
    initial_date: "01-10-2016",
    final_date: "01-12-2016",
    release_id: "2"
  )
]
