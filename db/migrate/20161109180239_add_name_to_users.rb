class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :gender, :string
    add_column :users, :dob, :string 
    add_column :users, :zip_code, :integer
    add_column :users, :relationship, :string
    add_column :users, :education, :string 
    add_column :users, :political, :string 
    add_column :users, :ethnicity, :string 
    add_column :users, :religion, :string
  end
end
