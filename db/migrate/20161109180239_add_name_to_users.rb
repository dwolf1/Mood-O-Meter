class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :gender, :string
    add_column :users, :dob, :string 
  end
end

# this page allows us to add information to the devise_create_users.rb table
