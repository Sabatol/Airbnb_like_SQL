Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all 


require 'faker'

dogsitters = []
dogs = []
cities = []

15.times do
  city = City.create(city_name: Faker::Address.city)
  cities << city
end


200.times do 
  dog = Dog.create(name: Faker::Name.first_name, city: cities.sample)
  dogs << dog
end

50.times do
  dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, notation: Faker::Number.number(digits: 2), city: cities.sample)
  dogsitters << dogsitter
end

500.times do |index|
  Stroll.create(dog: dogs.sample, dogsitter: dogsitters.sample, date: Faker::Time.between(from: DateTime.now - 700, to: DateTime.now, format: :long), city: cities.sample)
end




