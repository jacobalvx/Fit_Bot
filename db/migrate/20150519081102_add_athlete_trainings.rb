class AddAthleteTrainings < ActiveRecord::Migration
  def change
  	create_table :athelete_tranings, id: false do |t|
      t.integer :athlete_id
      t.integer :training_id
     end
  end
end
