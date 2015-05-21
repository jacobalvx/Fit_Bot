class CreateAthleteTrainings < ActiveRecord::Migration
  def change
    create_table :athlete_trainings do |t|
    	t.integer :athlete_id, index: true
    	t.integer :training_id, index: true

      t.timestamps null: false
    end
  end
end
