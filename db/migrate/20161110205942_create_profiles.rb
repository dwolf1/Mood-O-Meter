class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
<<<<<<< HEAD
      t.references :user, foreign_key: true
=======
      t.integer :user_id
>>>>>>> master
    	t.integer :zip_code
    	t.string :relationship
    	t.string :education
    	t.string :income
    	t.string :political
    	t.string :ethnicity
    	t.string :religion
      	t.timestamps
    end
  end
end
