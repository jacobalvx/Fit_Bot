class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
    	t.integer  :trainer_id

      t.timestamps null: false
    end
  end
end
