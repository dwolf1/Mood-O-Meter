class CreateCustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :customs do |t|
    	t.integer :user_id

    	t.string :indulgence_1
    	t.string :indulgence_2
    	t.string :indulgence_3
    	t.string :indulgence_4
    	t.string :indulgence_5

    	t.string :responsibility_1
    	t.string :responsibility_2
    	t.string :responsibility_3
    	t.string :responsibility_4
    	t.string :responsibility_5

    	t.string :activity_1
    	t.string :activity_2
    	t.string :activity_3
    	t.string :activity_4
    	t.string :activity_5


      t.timestamps
    end
  end
end
