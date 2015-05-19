class CreateAthleteTrainings < ActiveRecord::Migration
  def change
    create_table :athlete_trainings do |t|
    	t.integer :athlete_id
    	t.integer :training_id
    end
  end
end
