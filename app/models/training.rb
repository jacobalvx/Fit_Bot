class Training < ActiveRecord::Base
	belongs_to :trainer, class_name: "User"
	has_and_belongs_to_many :athletes, :class_name => "User", :join_table => "athlete_trainings", :association_foreign_key => "athlete_id"

end
