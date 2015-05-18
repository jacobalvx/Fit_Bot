class AddTrainerIdToAthlete < ActiveRecord::Migration
  def change
  	add_column :athletes, :trainer_id, :integer
  end
end
