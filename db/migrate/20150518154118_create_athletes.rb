class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |a|
    	a.string :name
    	a.string :email
    	
      a.timestamps null: false
    end
  end
end
