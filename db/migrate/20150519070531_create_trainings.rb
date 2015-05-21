class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
    	t.integer :trainer_id, index: true
    	t.string :name
    	t.text :description
    	t.string :trainer_type

      t.timestamps null: false
    end
  end
end
