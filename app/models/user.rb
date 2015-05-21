class User < ActiveRecord::Base
	 validates :role, inclusion: { in: %w(trainer athlete)}
	 #validates :role, :password, :email, presence: true

	

	 has_many :trainings, as: :trainer
	 has_and_belongs_to_many :trainings, as: :athletes
	 #has_many :trainings_joined, :class_name => "Training", trough: :athletes_trainings, :foreign_key => "training_id"


	 scope :trainers, -> {where(role: "trainer")}
	 scope :athletes, -> {where(role: "athlete")}

	# has_many :trainings, :class_name => "Training", :foreign_key => "training_id"
	# has_and_belongs_to_many :trainings_joined, :class_name => "Training", :join_table => "athletes_trainings", :foreign_key => "training_id"

end
