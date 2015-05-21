class Training < ActiveRecord::Base
	#belongs_to :trainer, class_name: "User", foreign_key: "trainer_id"
	#has_and_belongs_to_many :athletes, :class_name => "User", :join_table => "athletes_trainings", :foreing_key => "athlete_id"
	validate :check_role_trainer

	belongs_to :trainer, -> {trainers}, class_name: "User", foreign_key: "trainer_id"

	has_and_belongs_to_many :athletes, -> {athletes}, class_name: "User", :join_table => "athletes_trainings", foreign_key: "athlete_id"


	def check_role_trainer
    	if self.trainer == nil
      		 errors.add(:role, "can't be create trainings")
    	end
  	end
end	
