class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
    	t.string :name
    	t.string :email
    	t.string :password

      t.timestamps null: false
    end
  end
end
