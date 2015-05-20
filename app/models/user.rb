class User < ActiveRecord::Base
	 validates :role, inclusion: { in: %w(trainer athlete)}
	 validates :role, :password, :email, presence: true

	 has_many :trainings
	 has_and_belongs_to_many :trainings, :class_name => "Training", :join_table => "athlete_trainings", :foreign_key => "training_id"
end
