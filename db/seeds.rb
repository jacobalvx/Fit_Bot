require 'faker'# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def create_trainers(total)
	trainers = []
	total.times do |row|
  		trainers << User.create(name: Faker::Name.first_name, email: Faker::Internet.email, role: "trainer")
  	end
  	trainers
end

def create_athletes(total)
	athletes = []
	total.times do |row|
  		athletes <<  User.create(name: Faker::Name.first_name, email: Faker::Internet.email, role: "athlete")
  	end
  	athletes
end


def create_trainings(trainer, total)
	total.times do |row|
		trainer.trainings.create(name: Faker::Name.first_name)
	end
end
####################################################################

trainers = create_trainers(2)

trainers.each do |trainer|
	create_trainings(trainer,3)
end

athletes = create_athletes(2)


#trainer = User.create(name: "Rafa", email: "rafa@hotmail.com", password: "hola", role: "trainer")
#trainer.trainings.create(name: "First", description: "The first training")



puts "Seed complete"