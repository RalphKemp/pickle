require 'faker'

User.destroy_all
puts "destroying users"

puts "creating customers"

counter = 1
10.times do
  User.create!(name: Faker::Name.first_name, email: Faker::Internet.email(:name), password: "password")
  puts "Created user number #{counter}"
  counter += 1
end

puts "creating workers"

counter = 1
10.times do
  User.create!(name: Faker::Name.first_name, email: Faker::Internet.email(:name), password: "password", customer: false, worker: true)
  puts "Created user number #{counter}"
  counter += 1
end
