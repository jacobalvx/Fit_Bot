class Training < ActiveRecord::Base
	belongs_to :trainer, class_name: "User", foreign_key: "trainer_id"
	has_and_belongs_to_many :athletes, :class_name => "User", :join_table => "athlete_trainings", :foreing_key => "athlete_id"
end	
