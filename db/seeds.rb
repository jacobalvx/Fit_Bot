require 'faker'# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def create_athletes(trainer, total)
	total.times do |row|
  		trainer.athletes.create(name: Faker::Name.first_name, email: Faker::Internet.email)
  	end
end


t = Trainer.create name: "Rafa", email: "rafa@hotmail.com", password: "hola"
create_athletes(t,3)
