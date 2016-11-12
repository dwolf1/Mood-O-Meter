class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.integer :sleep
    	t.integer :water
    	t.string :breakfast
    	t.string :lunch 
    	t.string :dinner
    	t.integer :tv
    	t.integer :social_media
    	t.integer :socialization
    	t.integer :work
        t.text :content
        t.integer :rating
<<<<<<< HEAD

=======
        
>>>>>>> master
    	t.boolean :indulgence_1
    	t.boolean :indulgence_2
    	t.boolean :indulgence_3
    	t.boolean :indulgence_4
    	t.boolean :indulgence_5

    	t.boolean :responsibility_1
    	t.boolean :responsibility_2
    	t.boolean :responsibility_3
    	t.boolean :responsibility_4
    	t.boolean :responsibility_5

    	t.boolean :activity_1
    	t.boolean :activity_2
    	t.boolean :activity_3
    	t.boolean :activity_4
    	t.boolean :activity_5
      
      t.timestamps :time_created
    end
  end
end
